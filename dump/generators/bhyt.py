# generators bhyt
from typing import List, Tuple
from utils import q, fmt_date, recent_date
from state import PersistentIdGen

def gen(bn_ids: List[str], id_bhyt: PersistentIdGen, bhyt_days_back: int) -> Tuple[List[str], List[str]]:
    rows: List[str] = []
    bhyt_ids: List[str] = []
    for bn in bn_ids:
        code = id_bhyt.next()
        start = recent_date(0, bhyt_days_back)
        end = start.replace(year=start.year + 2)
        rows.append(f"({q(code)},{q(bn)},{q(fmt_date(start))},{q(fmt_date(end))})")
        bhyt_ids.append(code)
    return rows, bhyt_ids
