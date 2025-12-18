# Logic chung
import random, string
import datetime as dt
from typing import Optional, List, Tuple

def sql_escape(s: str) -> str:
    return s.replace("'", "''")

def q(s: Optional[str]) -> str:
    if s is None:
        return "NULL"
    return f"'{sql_escape(s)}'"

def qb(b: bool) -> str:
    return "TRUE" if b else "FALSE"

def randint_digits(n: int) -> str:
    return "".join(random.choice(string.digits) for _ in range(n))

def today_date() -> dt.date:
    return dt.date.today()

def fmt_date(d: dt.date) -> str:
    return d.isoformat()

def date_between(start: dt.date, end: dt.date) -> dt.date:
    if start > end:
        start, end = end, start
    days = (end - start).days
    return start + dt.timedelta(days=random.randint(0, max(days, 0)))

def recent_date(days_back_min: int, days_back_max: int) -> dt.date:
    t = today_date()
    start = t - dt.timedelta(days=days_back_max)
    end = t - dt.timedelta(days=days_back_min)
    return date_between(start, end)

def future_date_from(d: dt.date, days_min: int, days_max: int) -> dt.date:
    return d + dt.timedelta(days=random.randint(days_min, days_max))

def pick_weighted(items: List[Tuple[str, float]]) -> str:
    vals, w = zip(*items)
    return random.choices(vals, weights=w, k=1)[0]
