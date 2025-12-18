# Cấu hình các tham số khi dump
from dataclasses import dataclass

@dataclass
class Config:
    seed: int = 42
    batch: int = 5000
    admit_window_days: int = 30
    visit_window_days: int = 14
    bhyt_days_back: int = 365
    discharge_prob: float = 0.7
    max_stay_days: int = 20

@dataclass
class Counts:
    benhnhan: int = 40
    bacsi: int = 40
    khoa: int = 10
    phongbenh_new: int = 0
    thuoc_new: int = 0
    donthuoc: int = 40
    sokhambenh: int = 40
    hoadon: int = 40
