# generators sokhambenh
from typing import List
import random
from pools import BENH, HUONG_DIEU_TRI, TINH_TRANG
from utils import q, fmt_date, pick_weighted, recent_date
from state import PersistentIdGen

def gen(n: int, id_skb: PersistentIdGen, bn_ids: List[str], dt_ids: List[str], khoa_ids: List[str], visit_window_days: int) -> List[str]:
    rows: List[str] = []
    for _ in range(n):
        skb = id_skb.next()
        bn = random.choice(bn_ids) if bn_ids else None
        ngay = recent_date(0, visit_window_days)
        chandoan = pick_weighted(BENH)
        huong = pick_weighted(HUONG_DIEU_TRI)
        tinhtrang = pick_weighted(TINH_TRANG)
        dtid = random.choice(dt_ids) if dt_ids else None
        khoa = random.choice(khoa_ids) if khoa_ids else None
        rows.append(f"({q(skb)},{q(bn)},{q(fmt_date(ngay))},{q(chandoan)},{q(huong)},{q(tinhtrang)},{q(dtid)},{q(khoa)})")
    return rows
