# main.py
import argparse, random
from config import Config, Counts
from state import load_state, save_state, PersistentIdGen
from sqlwriter import SqlWriter
from generators import Ctx

from generators import benhnhan, thannhan, bhyt, nhapvien, xuatvien, donthuoc, chitiet_dh, sokhambenh, hoadon, users
# (seed tables)
from generators import khoa, bacsi, lamviec, phongbenh, toanha, giuong, thuoc, soluongthuoc

def get_pools(state: dict) -> dict:
    return state.setdefault("_pools", {
        "khoa_ids": [], "bacsi_ids": [], "phong_ids": [], "thuoc_ids": []
    })

def build_idgens(state: dict):
    return {
        "bn":   PersistentIdGen("BN",   4, "BN",   state, 1),
        "bhyt": PersistentIdGen("BHYT", 5, "BHYT", state, 1),
        "bs":   PersistentIdGen("BS",   4, "BS",   state, 1),
        "khoa": PersistentIdGen("K",    4, "K",    state, 1),
        "phong":PersistentIdGen("P",    4, "P",    state, 1),
        "thuoc":PersistentIdGen("T",    4, "T",    state, 1),
        "dt":   PersistentIdGen("DT",   5, "DT",   state, 1),
        "skb":  PersistentIdGen("SKB",  5, "SKB",  state, 1),
        "hd":   PersistentIdGen("HD",   5, "HD",   state, 1),
    }

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default="insert.sql")
    ap.add_argument("--state", default="state.json")
    ap.add_argument("--append", action="store_true")
    ap.add_argument("--mode", choices=["seed", "realtime", "full"], default="full")
    ap.add_argument("--tables", default="*", help="Comma-separated tables or *")
    ap.add_argument("--n", type=int, default=40)
    ap.add_argument("--batch", type=int, default=5000)
    ap.add_argument("--admit_window_days", type=int, default=30)
    ap.add_argument("--visit_window_days", type=int, default=14)
    ap.add_argument("--bhyt_days_back", type=int, default=365)
    ap.add_argument("--discharge_prob", type=float, default=0.7)
    ap.add_argument("--max_stay_days", type=int, default=20)
    args = ap.parse_args()

    cfg = Config(
        batch=args.batch,
        admit_window_days=args.admit_window_days,
        visit_window_days=args.visit_window_days,
        bhyt_days_back=args.bhyt_days_back,
        discharge_prob=args.discharge_prob,
        max_stay_days=args.max_stay_days
    )
    cnt = Counts(benhnhan=args.n, donthuoc=args.n, sokhambenh=args.n, hoadon=args.n, bacsi=max(10, min(200, args.n)))
    random.seed(cfg.seed)

    state = load_state(args.state)
    pools = get_pools(state)
    ids = build_idgens(state)

    ctx = Ctx(
        khoa_ids=pools["khoa_ids"],
        bacsi_ids=pools["bacsi_ids"],
        phong_ids=pools["phong_ids"],
        thuoc_ids=pools["thuoc_ids"],
    )

    if args.mode == "realtime":
        missing = [name for name, ids in [
            ("khoa", ctx.khoa_ids),
            ("bacsi", ctx.bacsi_ids),
            ("phongbenh", ctx.phong_ids),
            ("thuoc", ctx.thuoc_ids),
        ] if not ids]
        if missing:
            raise SystemExit(
                f"Thiếu dữ liệu seed cho: {', '.join(missing)}. Hãy chạy --mode seed hoặc --mode full trước khi realtime."
            )

    wanted = [t.strip().lower() for t in args.tables.split(",")] if args.tables != "*" else ["*"]

    def want(table: str) -> bool:
        return "*" in wanted or table.lower() in wanted

    mode = "a" if args.append else "w"
    with open(args.out, mode, encoding="utf-8") as f:
        w = SqlWriter(f)
        section = 1

        # ---- SEED PART (dims) ----
        if args.mode in ("seed", "full"):
            # seed khoa/bacsi/phong/thuoc if needed
            if (not ctx.khoa_ids) and want("khoa"):
                rows = khoa.ensure_and_gen(ctx, ids["khoa"], ids["bs"], target_khoa=10, target_bacsi=cnt.bacsi)
                w.section("KHOA", section); section += 1
                w.insert_values_terminated("khoa", iter(rows), cfg.batch)

            if want("bacsi"):
                rows, doctors = bacsi.ensure_and_gen(ctx, ids["bs"], ctx.khoa_ids, target_bacsi=cnt.bacsi)
                w.section("BACSI", section); section += 1
                w.insert_values_terminated("bacsi", iter(rows), cfg.batch)

                if want("lamviec"):
                    rows_lv = lamviec.gen(doctors)
                    w.section("LAMVIEC", section); section += 1
                    w.insert_values_terminated("lamviec", iter(rows_lv), cfg.batch)

            if want("phongbenh"):
                rows_pb, meta = phongbenh.ensure_and_gen(ctx, ids["phong"], ctx.khoa_ids, target_rooms=50)
                w.section("PHONGBENH", section); section += 1
                w.insert_values_terminated("phongbenh", iter(rows_pb), cfg.batch)
                if want("toanha"):
                    w.section("TOANHA", section); section += 1
                    w.insert_values_terminated("toanha", iter(toanha.gen(meta)), cfg.batch)
                if want("giuong"):
                    w.section("GIUONG", section); section += 1
                    w.insert_values_terminated("giuong", iter(giuong.gen(ctx.phong_ids)), cfg.batch)

            if want("thuoc"):
                rows_t, new_t = thuoc.ensure_and_gen(ctx, ids["thuoc"], target_drugs=200)
                w.section("THUOC", section); section += 1
                w.insert_values_terminated("thuoc", iter(rows_t), cfg.batch)
                if want("soluongthuoc"):
                    w.section("SOLUONGTHUOC", section); section += 1
                    w.insert_values_terminated("soluongthuoc", iter(soluongthuoc.gen(new_t)), cfg.batch)

        # ---- REALTIME PART (facts/events) ----
        if args.mode in ("realtime", "full"):
            if want("benhnhan"):
                rows, ctx.new_bn_ids = benhnhan.gen(cnt.benhnhan, ids["bn"])
                w.section("BENHNHAN", section); section += 1
                w.insert_values_terminated("benhnhan", iter(rows), cfg.batch)

            if want("thannhan"):
                w.section("THANNHAN", section); section += 1
                w.insert_values_terminated("thannhan", iter(thannhan.gen(ctx.new_bn_ids)), cfg.batch)

            if want("bhyt"):
                rows, ctx.new_bhyt_ids = bhyt.gen(ctx.new_bn_ids, ids["bhyt"], cfg.bhyt_days_back)
                w.section("BHYT", section); section += 1
                w.insert_values_terminated("BHYT", iter(rows), cfg.batch)

            if want("nhapvien"):
                rows, ctx.nhap_dates = nhapvien.gen(ctx.new_bn_ids, ctx.phong_ids, cfg.admit_window_days)
                w.section("NHAPVIEN", section); section += 1
                w.insert_values_terminated("nhapvien", iter(rows), cfg.batch)

            if want("xuatvien"):
                rows = xuatvien.gen(ctx.new_bn_ids, ctx.nhap_dates, cfg.discharge_prob, cfg.max_stay_days)
                w.section("XUATVIEN", section); section += 1
                if rows:
                    w.insert_values_terminated("xuatvien", iter(rows), cfg.batch)

            if want("donthuoc"):
                rows, ctx.new_dt_ids = donthuoc.gen(cnt.donthuoc, ids["dt"], ctx.bacsi_ids, ctx.new_bn_ids)
                w.section("DONTHUOC", section); section += 1
                w.insert_values_terminated("donthuoc", iter(rows), cfg.batch)

            if want("chitiet_dh"):
                w.section("CHITIET_DH", section); section += 1
                w.insert_values_terminated("chitiet_dh", iter(chitiet_dh.gen(ctx.new_dt_ids, ctx.thuoc_ids)), cfg.batch)

            if want("sokhambenh"):
                w.section("SOKHAMBENH", section); section += 1
                w.insert_values_terminated(
                    "sokhambenh",
                    iter(sokhambenh.gen(cnt.sokhambenh, ids["skb"], ctx.new_bn_ids, ctx.new_dt_ids, ctx.khoa_ids, cfg.visit_window_days)),
                    cfg.batch
                )

            if want("hoadon"):
                w.section("HOADON", section); section += 1
                w.insert_values_terminated(
                    "hoadon",
                    iter(hoadon.gen(cnt.hoadon, ids["hd"], ctx.new_bhyt_ids, ctx.new_dt_ids, ctx.new_bn_ids)),
                    cfg.batch
                )

            if want("user") or want("users"):
                w.section("USERS (BENHNHAN - NEW)", section); section += 1
                users.dump_users_benhnhan(w, ctx.new_bn_ids)

    # persist pools + counters
    pools["khoa_ids"] = ctx.khoa_ids
    pools["bacsi_ids"] = ctx.bacsi_ids
    pools["phong_ids"] = ctx.phong_ids
    pools["thuoc_ids"] = ctx.thuoc_ids
    save_state(state, args.state)
    print(f"Done: {args.out} | mode={args.mode} | append={args.append}")

if __name__ == "__main__":
    main()
