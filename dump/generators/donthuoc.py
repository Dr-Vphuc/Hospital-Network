# generators donthuoc
from typing import List, Tuple
import random
from utils import q
from state import PersistentIdGen

def gen(n: int, id_dt: PersistentIdGen, bs_ids: List[str], bn_ids: List[str]) -> Tuple[List[str], List[str]]:
    rows: List[str] = []
    dt_ids: List[str] = []
    for _ in range(n):
        dtid = id_dt.next()
        bs = random.choice(bs_ids) if bs_ids else None
        bn = random.choice(bn_ids) if bn_ids else None
        rows.append(f"({q(dtid)},{q(bs)},{q(bn)})")
        dt_ids.append(dtid)
    return rows, dt_ids
