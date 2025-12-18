# generators thuoc
from typing import List, Tuple
import datetime as dt
from pools import THUOC_TEN
from utils import q, fmt_date, today_date, date_between
from state import PersistentIdGen
from generators import Ctx
import random

def ensure_and_gen(ctx: Ctx, id_thuoc: PersistentIdGen, target_drugs: int = 200) -> Tuple[List[str], List[str]]:
    # Only seed if empty to avoid duplicates
    if ctx.thuoc_ids:
        return [], []

    rows: List[str] = []
    new_ids: List[str] = []
    for _ in range(target_drugs):
        t = id_thuoc.next()
        ten, cd = random.choice(THUOC_TEN)
        han = date_between(today_date() + dt.timedelta(days=30), today_date() + dt.timedelta(days=3650))
        dongia = random.choice([2000, 3000, 5000, 7000, 8000, 12000, 15000, 20000])
        rows.append(f"({q(t)},{q(ten)},{q(cd)},{q(fmt_date(han))},{dongia})")
        ctx.thuoc_ids.append(t)
        new_ids.append(t)
    return rows, new_ids
