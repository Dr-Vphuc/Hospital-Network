# generators thannhan
from typing import List
from pools import gen_fullname, gen_phone, TINH_TP, GIOI_TINH
from utils import q, pick_weighted

def gen(bn_ids: List[str]) -> List[str]:
    rows: List[str] = []
    for bn in bn_ids:
        sex = pick_weighted(GIOI_TINH)
        name = gen_fullname(sex)
        phone = gen_phone("091")
        addr = pick_weighted(TINH_TP)
        rows.append(f"({q(bn)},{q(name)},{q(sex)},{q(phone)},{q(addr)})")
    return rows
