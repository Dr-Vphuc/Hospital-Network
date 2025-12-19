# generators khoa
from typing import List
import random
from pools import CHUYEN_MON
from utils import q, pick_weighted
from state import PersistentIdGen
from generators import Ctx

def ensure_and_gen(ctx: Ctx, id_khoa: PersistentIdGen, id_bs: PersistentIdGen,
                   target_khoa: int = 10, target_bacsi: int = 40) -> List[str]:
    # Bảo đảm đủ số lượng tối thiểu; không bỏ qua nếu đã có ID, để luôn sinh dữ liệu cho file SQL
    if len(ctx.khoa_ids) < target_khoa:
        for _ in range(target_khoa - len(ctx.khoa_ids)):
            ctx.khoa_ids.append(id_khoa.next())

    if len(ctx.bacsi_ids) < target_bacsi:
        for _ in range(target_bacsi - len(ctx.bacsi_ids)):
            ctx.bacsi_ids.append(id_bs.next())

    rows: List[str] = []
    for k in ctx.khoa_ids:
        tenkhoa = pick_weighted(CHUYEN_MON)
        truongkhoa = random.choice(ctx.bacsi_ids)
        rows.append(f"({q(k)},{q(tenkhoa)},{q(truongkhoa)})")
    return rows
