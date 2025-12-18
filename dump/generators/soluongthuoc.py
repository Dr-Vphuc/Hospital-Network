# generators soluongthuoc
from typing import List
import random
from utils import q

def gen(thuoc_ids: List[str]) -> List[str]:
    rows: List[str] = []
    for t in thuoc_ids:
        ton = random.randint(0, 20000)
        rows.append(f"({q(t)},{ton})")
    return rows
