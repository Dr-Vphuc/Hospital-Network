# generators chitiet_dh
from typing import List
import random
from utils import q

def gen(dt_ids: List[str], thuoc_ids: List[str]) -> List[str]:
    rows: List[str] = []
    if not thuoc_ids:
        return rows

    for dtid in dt_ids:
        k = random.randint(1, 4)
        drugs = random.sample(thuoc_ids, k=min(k, len(thuoc_ids)))
        for t in drugs:
            sl = random.randint(1, 30)
            songay = random.choice([3, 5, 7, 10, 14])
            rows.append(f"({q(dtid)},{q(t)},{sl},{songay})")
    return rows
