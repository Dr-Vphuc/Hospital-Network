# generators giuong
from typing import List, Tuple
import random
from utils import q

def gen(phong_meta: List[Tuple[str, str, int, int]]) -> List[str]:
    rows: List[str] = []
    for p, _, sogiuong, _ in phong_meta:
        beds = sogiuong
        used = random.randint(0, beds)
        for bed_no in range(1, beds + 1):
            status = 1 if bed_no <= used else 0
            rows.append(f"({q(p)},{bed_no},{status})")
    return rows
