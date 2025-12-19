# generators soluongthuoc
from typing import List, Tuple
import random
import datetime as dt
from utils import q, fmt_date, date_between
from state import PersistentIdGen

def gen(thuoc_ids: List[str], id_lo: PersistentIdGen) -> Tuple[List[str], List[str]]:
    rows: List[str] = []
    lo_ids: List[str] = []
    for t in thuoc_ids:
        malo = id_lo.next()
        hsd = date_between(dt.date.today() + dt.timedelta(days=30), dt.date.today() + dt.timedelta(days=3650))
        ton = random.randint(0, 250)
        rows.append(f"({q(malo)},{q(t)},{ton},{q(fmt_date(hsd))})")
        lo_ids.append(malo)
    return rows, lo_ids
