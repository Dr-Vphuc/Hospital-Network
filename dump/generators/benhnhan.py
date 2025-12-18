# generators/benhnhan.py
from typing import List, Tuple
from dump.pools import gen_fullname, gen_phone, gen_birthdate, TINH_TP, LOAI_DIEU_TRI, GIOI_TINH
from dump.utils import q, fmt_date, pick_weighted
from dump.state import PersistentIdGen   

def gen(n: int, id_bn: PersistentIdGen) -> Tuple[List[str], List[str]]:
    rows: List[str] = []
    bn_ids: List[str] = []
    for _ in range(n):
        bn = id_bn.next()
        sex = pick_weighted(GIOI_TINH)
        name = gen_fullname(sex)
        dob = fmt_date(gen_birthdate(1965, 2012))
        phone = gen_phone("09")
        addr = pick_weighted(TINH_TP)
        loai = pick_weighted(LOAI_DIEU_TRI)
        bn_ids.append(bn)
        rows.append(f"({q(bn)},{q(name)},{q(sex)},{q(dob)},{q(phone)},{q(addr)},{q(loai)})")
    return rows, bn_ids
