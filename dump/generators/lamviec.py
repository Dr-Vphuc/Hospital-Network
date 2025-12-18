# generators lamviec
from typing import List, Tuple, Dict
import random

Doctor = Tuple[str, Dict[str, object]]

def gen(doctors: List[Doctor]) -> List[str]:
    rows: List[str] = []
    for bs, meta in doctors:
        makhoa = meta.get("khoa")
        sonam = random.randint(1, 25)
        rows.append(f"('{makhoa}','{bs}',{sonam})" if makhoa is not None else f"(NULL,'{bs}',{sonam})")
    return rows
