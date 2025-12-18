# generators hoadon
from typing import List
import random
from utils import q
from state import PersistentIdGen

def gen(n: int, id_hd: PersistentIdGen, bhyt_ids: List[str], dt_ids: List[str], bn_ids: List[str]) -> List[str]:
    rows: List[str] = []
    for _ in range(n):
        hd = id_hd.next()
        bh = random.choice(bhyt_ids) if bhyt_ids else None
        dtid = random.choice(dt_ids) if dt_ids else None
        bn = random.choice(bn_ids) if bn_ids else None
        tong = random.choice([120000,150000,180000,200000,220000,250000,300000,350000])
        rows.append(f"({q(hd)},{q(bh)},{q(dtid)},{q(bn)},{tong})")
    return rows
