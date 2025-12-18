# generators khoa
from typing import List
import random
from pools import CHUYEN_MON
from utils import q, pick_weighted
from state import PersistentIdGen
from generators import Ctx

def ensure_and_gen(ctx: Ctx, id_khoa: PersistentIdGen, id_bs: PersistentIdGen,
                   target_khoa: int = 10, target_bacsi: int = 40) -> List[str]:
    # Only seed if empty to avoid duplicates
    if ctx.khoa_ids and ctx.bacsi_ids:
        return []

    if not ctx.khoa_ids:
        for _ in range(target_khoa):
            ctx.khoa_ids.append(id_khoa.next())

    if not ctx.bacsi_ids:
        for _ in range(target_bacsi):
            ctx.bacsi_ids.append(id_bs.next())

    rows: List[str] = []
    for k in ctx.khoa_ids:
        tenkhoa = pick_weighted(CHUYEN_MON)
        truongkhoa = random.choice(ctx.bacsi_ids)
        rows.append(f"({q(k)},{q(tenkhoa)},{q(truongkhoa)})")
    return rows
