# generators phongbenh
from typing import List, Tuple
import random
from utils import q
from state import PersistentIdGen
from generators import Ctx

def ensure_and_gen(ctx: Ctx, id_phong: PersistentIdGen, khoa_ids: List[str], target_rooms: int = 50) -> Tuple[List[str], List[Tuple[str, str, int, int]]]:
    rows: List[str] = []
    meta: List[Tuple[str, str, int, int]] = []

    if len(ctx.phong_ids) < target_rooms:
        for _ in range(target_rooms - len(ctx.phong_ids)):
            ctx.phong_ids.append(id_phong.next())

    for p in ctx.phong_ids:
        k = random.choice(khoa_ids) if khoa_ids else None
        sogiuong = random.randint(4, 25)
        giangay = random.choice([200000, 250000, 300000, 350000, 400000, 500000, 600000])
        rows.append(f"({q(p)},{q(k)},{sogiuong},{giangay})")
        meta.append((p, k, sogiuong, giangay))
    return rows, meta
