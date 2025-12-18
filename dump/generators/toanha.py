# generators toanha
from typing import List, Tuple
import random
from utils import q

def gen(phong_meta: List[Tuple[str, str]]) -> List[str]:
    rows: List[str] = []
    toa_names = ["Tòa A", "Tòa B", "Tòa C", "Tòa D", "Tòa E", "Tòa F", "Tòa G"]
    for p, k in phong_meta:
        rows.append(f"({q(k)},{q(p)},{q(random.choice(toa_names))})")
    return rows
