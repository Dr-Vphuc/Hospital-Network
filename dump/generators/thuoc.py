# generators thuoc
from typing import List, Tuple
from pools import THUOC_TEN
from utils import q
from state import PersistentIdGen
from generators import Ctx
import random

def ensure_and_gen(ctx: Ctx, id_thuoc: PersistentIdGen, target_drugs: int = 200) -> Tuple[List[str], List[str]]:
    rows: List[str] = []
    new_ids: List[str] = []

    if len(ctx.thuoc_ids) < target_drugs:
        for _ in range(target_drugs - len(ctx.thuoc_ids)):
            ctx.thuoc_ids.append(id_thuoc.next())

    for t in ctx.thuoc_ids:
        ten, cd = random.choice(THUOC_TEN)
        dongia = random.choice([2000, 3000, 5000, 7000, 8000, 12000, 15000, 20000])
        rows.append(f"({q(t)},{q(ten)},{q(cd)},{dongia})")
        new_ids.append(t)
    return rows, new_ids
