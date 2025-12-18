# generators giuong
from typing import List
import random
from utils import q

def gen(phong_ids: List[str]) -> List[str]:
    rows: List[str] = []
    for p in phong_ids:
        beds = random.randint(1, 5)
        used = random.randint(0, beds)
        for bed_no in range(1, beds + 1):
            status = 1 if bed_no <= used else 0
            rows.append(f"({q(p)},{bed_no},{status})")
    return rows
