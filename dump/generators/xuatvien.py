# generators xuatvien
from typing import List, Dict
import datetime as dt
import random
from utils import q, fmt_date, today_date, future_date_from

def gen(bn_ids: List[str], nhap_dates: Dict[str, dt.date], discharge_prob: float, max_stay_days: int) -> List[str]:
    rows: List[str] = []
    for bn in bn_ids:
        if random.random() > discharge_prob:
            continue
        d0 = nhap_dates.get(bn)
        if d0 is None:
            continue
        d1 = future_date_from(d0, 1, max_stay_days)
        if d1 > today_date():
            d1 = today_date()
        rows.append(f"({q(bn)},{q(fmt_date(d1))})")
    return rows
