# generators bacsi
from typing import List, Tuple, Dict
import random
from pools import gen_fullname, gen_phone, gen_birthdate, gen_room_code, TRINH_DO, GIOI_TINH
from utils import q, qb, fmt_date, pick_weighted
from state import PersistentIdGen
from generators import Ctx

Doctor = Tuple[str, Dict[str, object]]

def ensure_and_gen(ctx: Ctx, id_bs: PersistentIdGen, khoa_ids: List[str], target_bacsi: int = 40) -> Tuple[List[str], List[Doctor]]:
    if len(ctx.bacsi_ids) < target_bacsi:
        for _ in range(target_bacsi - len(ctx.bacsi_ids)):
            ctx.bacsi_ids.append(id_bs.next())

    doctors: List[Doctor] = []
    rows: List[str] = []
    for i, bs in enumerate(ctx.bacsi_ids):
        sex = pick_weighted(GIOI_TINH)
        name = gen_fullname(sex)
        dob = fmt_date(gen_birthdate(1960, 1995))
        phone = gen_phone("092")
        phong = gen_room_code((i % 60) + 1)
        trinhdo = pick_weighted(TRINH_DO)
        makhoa = random.choice(khoa_ids) if khoa_ids else None
        active = (random.random() < 0.75)

        doctors.append((bs, {"khoa": makhoa}))
        rows.append(
            f"({q(bs)},{q(name)},{q(sex)},{q(dob)},{q(phone)},{q(phong)},{q(trinhdo)},{q(makhoa)},{qb(active)})"
        )

    return rows, doctors
