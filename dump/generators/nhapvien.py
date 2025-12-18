from typing import List, Dict, Tuple, Optional
import datetime as dt
import random
from utils import q, fmt_date, recent_date

def gen(
    bn_ids: List[str],
    phong_ids: List[str],
    admit_window_days: int
) -> Tuple[List[str], Dict[str, dt.date]]:

    rows: List[str] = []
    nhap_dates: Dict[str, dt.date] = {}

    for bn in bn_ids:
        ngay = recent_date(0, admit_window_days)
        nhap_dates[bn] = ngay

        p: Optional[str]
        if phong_ids:
            p = random.choice(phong_ids)
        else:
            p = None

        so_giuong = random.randint(1, 5)
        rows.append(f"({q(bn)},{q(fmt_date(ngay))},{q(p)},{so_giuong})")

    return rows, nhap_dates
