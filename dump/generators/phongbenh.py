# generators phongbenh
from typing import List, Tuple
import random
from utils import q
from state import PersistentIdGen
from generators import Ctx

def ensure_and_gen(ctx: Ctx, id_phong: PersistentIdGen, khoa_ids: List[str], target_rooms: int = 50) -> Tuple[List[str], List[Tuple[str, str]]]:
    # Only seed if empty to avoid duplicates
    if ctx.phong_ids:
        return [], []

    rows: List[str] = []
    meta: List[Tuple[str, str]] = []
    for _ in range(target_rooms):
        p = id_phong.next()
        k = random.choice(khoa_ids) if khoa_ids else None
        sogiuong = random.randint(4, 25)
        giangay = random.choice([200000, 250000, 300000, 350000, 400000, 500000, 600000])
        ctx.phong_ids.append(p)
        rows.append(f"({q(p)},{q(k)},{sogiuong},{giangay})")
        meta.append((p, k))
    return rows, meta
