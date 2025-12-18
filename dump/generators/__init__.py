# Context object to share data between generators
from dataclasses import dataclass, field
from typing import List, Dict
import datetime as dt

@dataclass
class Ctx:
    # pools (persisted)
    khoa_ids: List[str] = field(default_factory=list)
    bacsi_ids: List[str] = field(default_factory=list)
    phong_ids: List[str] = field(default_factory=list)
    thuoc_ids: List[str] = field(default_factory=list)

    # per-run outputs
    new_bn_ids: List[str] = field(default_factory=list)
    new_bhyt_ids: List[str] = field(default_factory=list)
    new_dt_ids: List[str] = field(default_factory=list)
    nhap_dates: Dict[str, dt.date] = field(default_factory=dict)
