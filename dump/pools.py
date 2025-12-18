# Lưu các tên Việt Nam để Dump
import random
import datetime as dt
from dump.utils import randint_digits

# ==========================================
# 1. DỮ LIỆU NHÂN KHẨU HỌC (DEMOGRAPHICS)
# ==========================================
HO = [
    "Nguyễn", "Trần", "Lê", "Phạm", "Hoàng", "Huỳnh", "Phan", "Vũ", "Võ", "Đặng",
    "Bùi", "Đỗ", "Hồ", "Ngô", "Dương", "Lý", "Đinh", "Trương", "Hà", "Đoàn",
    "Trịnh", "Lâm", "Mai", "Vương", "Lương", "Cao", "Đào", "Tạ", "Phùng", "Tô",
    "Lưu", "Thái", "Châu", "Tăng", "Mạc", "Thạch", "Lại", "Tiêu", "Quách", "Nghiêm"
]

# Tên đệm
TEN_DEM_NAM = [
    "Văn", "Hữu", "Đức", "Quang", "Minh", "Thanh", "Đình", "Gia",
    "Anh", "Tuấn", "Trung", "Hải", "Mạnh", "Thế", "Nhật", "Quốc",
    "Công", "Chí", "Bá", "Phước", "Thiên", "Trọng", "Viết", "Đăng"
]

TEN_DEM_NU = [
    "Thị", "Ngọc", "Thu", "Mai", "Khánh", "Bảo", "Thảo", "Phương",
    "Xuân", "Hoài", "Kim", "Hồng", "Diệu", "Mỹ"
]

# Tên Nam
TEN_NAM = [
    "An", "Bình", "Cường", "Dũng", "Đạt", "Hiếu", "Hưng", "Khoa", "Long", "Nam",
    "Phong", "Quân", "Sơn", "Tài", "Thắng", "Trí", "Tú", "Vinh", "Việt", "Đức",
    "Bách", "Bảo", "Công", "Duy", "Dương", "Gia", "Hải", "Hào", "Hậu", "Hòa",
    "Huy", "Khải", "Khang", "Khánh", "Khôi", "Kiên", "Lâm", "Linh", "Lộc", "Luân",
    "Minh", "Nghĩa", "Nguyên", "Nhân", "Phi", "Phúc", "Phước", "Quang", "Quyết", "Sáng",
    "Thành", "Thiên", "Thịnh", "Thông", "Toàn", "Trọng", "Trung", "Trường", "Tùng", "Vũ"
]

# Tên Nữ
TEN_NU = [
    "Anh", "Bích", "Chi", "Dung", "Giang", "Hà", "Hạnh", "Hương", "Lan", "Linh",
    "Mai", "Nga", "Nhung", "Oanh", "Phương", "Quỳnh", "Thảo", "Trang", "Yến", "Nhi",
    "Ánh", "Băng", "Châu", "Diệp", "Diệu", "Duyên", "Đào", "Giao", "Hiền", "Hoa",
    "Hoài", "Huyền", "Huệ", "Khuê", "Kiều", "Lam", "Liên", "Loan", "Ly", "Mẫn",
    "Minh", "My", "Ngân", "Ngọc", "Nguyệt", "Nhàn", "Như", "Phượng", "Quyên", "Sương",
    "Thanh", "Thi", "Thơ", "Thùy", "Thủy", "Tiên", "Trâm", "Trinh", "Tú", "Uyên",
    "Vân", "Vi", "Vy", "Xuyến", "Yên", "Tâm"
]

# Danh sách Tỉnh/TP (with trọng số ước lượng của từng tỉnh)
TINH_TP = [
    ("Hà Nội", 0.15), ("TP HCM", 0.18), ("Đà Nẵng", 0.04), ("Hải Phòng", 0.04), ("Cần Thơ", 0.03),
    ("Bắc Ninh", 0.02), ("Hải Dương", 0.02), ("Nam Định", 0.02), ("Thái Bình", 0.02), ("Hưng Yên", 0.02),
    ("Nghệ An", 0.03), ("Thanh Hóa", 0.03), ("Hà Tĩnh", 0.01), ("Quảng Bình", 0.01), ("Quảng Trị", 0.01),
    ("Thừa Thiên Huế", 0.02), ("Quảng Nam", 0.02), ("Quảng Ngãi", 0.01), ("Bình Định", 0.02), ("Phú Yên", 0.01),
    ("Khánh Hòa", 0.02), ("Lâm Đồng", 0.02), ("Đắk Lắk", 0.02), ("Gia Lai", 0.01),
    ("Bình Dương", 0.04), ("Đồng Nai", 0.04), ("Bà Rịa - Vũng Tàu", 0.02), ("Long An", 0.02), ("Tiền Giang", 0.02),
    ("An Giang", 0.02), ("Kiên Giang", 0.02), ("Vĩnh Long", 0.01), ("Đồng Tháp", 0.01), ("Bến Tre", 0.01),
    ("Thái Nguyên", 0.01), ("Phú Thọ", 0.01), ("Vĩnh Phúc", 0.01), ("Bắc Giang", 0.02), ("Quảng Ninh", 0.02)
]

# ==========================================
# 2. DỮ LIỆU KHÁM CHỮA BỆNH (MEDICAL INFO)
# ==========================================

# danh mục bệnh (ICD-10 style)
BENH = [
    # Hô hấp
    ("Cúm A/B", 0.05), ("Viêm họng cấp", 0.05), ("Viêm phế quản", 0.04), ("Viêm phổi", 0.03), ("Hen phế quản", 0.03),
    ("Viêm mũi dị ứng", 0.04), ("Viêm xoang mạn", 0.03), ("COPD", 0.02),

    # Tiêu hóa
    ("Viêm dạ dày - tá tràng", 0.06), ("Trào ngược dạ dày (GERD)", 0.05), ("Rối loạn tiêu hóa", 0.04),
    ("Hội chứng ruột kích thích", 0.03), ("Viêm gan B", 0.02), ("Gan nhiễm mỡ", 0.03), ("Xơ gan", 0.01),

    # Tim mạch & Chuyển hóa
    ("Tăng huyết áp", 0.07), ("Đái tháo đường type 2", 0.06), ("Rối loạn lipid máu", 0.05),
    ("Thiếu máu cơ tim", 0.03), ("Suy tim", 0.01), ("Gout", 0.02), ("Béo phì", 0.04),
    # Thần kinh & Cơ xương khớp

    ("Đau đầu vận mạch", 0.04), ("Rối loạn tiền đình", 0.03), ("Thoái hóa cột sống", 0.05),
    ("Thoát vị đĩa đệm", 0.02), ("Viêm khớp dạng thấp", 0.02), ("Đau thần kinh tọa", 0.02),

    # Da liễu & Khác
    ("Viêm da cơ địa", 0.03), ("Mề đay dị ứng", 0.03), ("Nhiễm trùng đường tiết niệu", 0.03),
    ("Sốt xuất huyết", 0.02), ("Sốt siêu vi", 0.04)
]

HUONG_DIEU_TRI = [
    ("Điều trị ngoại trú (kê đơn)", 0.50),
    ("Nhập viện nội trú", 0.20),
    ("Theo dõi tại nhà", 0.15),
    ("Chuyển tuyến trên", 0.05),
    ("Tư vấn sức khỏe", 0.05),
    ("Tái khám định kỳ", 0.05)
]

TINH_TRANG = [
    ("Ổn định", 0.40),
    ("Đang tiến triển tốt", 0.30),
    ("Thuyên giảm", 0.15),
    ("Nặng lên", 0.05),
    ("Tiên lượng dè dặt", 0.05),
    ("Nguy kịch", 0.05)
]

LOAI_DIEU_TRI = [("Nội trú", 0.35), ("Ngoại trú", 0.65)]
GIOI_TINH = [("Nam", 0.48), ("Nữ", 0.52)]

# ==========================================
# 3. DỮ LIỆU NHÂN SỰ (STAFF)
# ==========================================

TRINH_DO = [
    ("Cử nhân", 0.15),
    ("Bác sĩ", 0.25),
    ("Thạc sĩ", 0.30),
    ("Bác sĩ CKI", 0.15),
    ("Bác sĩ CKII", 0.10),
    ("Tiến sĩ", 0.05)
]

CHUYEN_MON = [
    ("Nội tổng quát", 0.15), ("Ngoại tổng quát", 0.10), ("Sản phụ khoa", 0.10),
    ("Nhi khoa", 0.12), ("Tim mạch", 0.08), ("Tai Mũi Họng", 0.08), ("Da liễu", 0.05),
    ("Răng Hàm Mặt", 0.05), ("Mắt", 0.05), ("Chấn thương chỉnh hình", 0.07),
    ("Hồi sức cấp cứu", 0.05), ("Nội tiết", 0.05), ("Thần kinh", 0.05)
]

# ==========================================
# 4. DỮ LIỆU THUỐC (MEDICINES)
# ==========================================

THUOC_TEN = [
    # Giảm đau / Hạ sốt / Kháng viêm
    ("Paracetamol 500mg", "Giảm đau hạ sốt"),
    ("Ibuprofen 400mg", "Kháng viêm NSAID"),
    ("Efferalgan Codeine", "Giảm đau mạnh"),
    ("Meloxicam", "Kháng viêm xương khớp"),
    ("Celecoxib", "Kháng viêm xương khớp"),

    # Kháng sinh
    ("Amoxicillin 500mg", "Kháng sinh"),
    ("Augmentin (Amox+Clav)", "Kháng sinh"),
    ("Azithromycin", "Kháng sinh"),
    ("Cefuroxime", "Kháng sinh"),
    ("Levofloxacin", "Kháng sinh"),

    # Hô hấp / Dị ứng
    ("Loratadin", "Chống dị ứng"),
    ("Fexofenadine", "Chống dị ứng"),
    ("Acetylcystein", "Tiêu đờm"),
    ("Salbutamol (Xịt)", "Giãn phế quản"),
    ("Siro ho thảo dược", "Giảm ho"),

    # Tiêu hóa
    ("Omeprazole", "Ức chế dạ dày"),
    ("Esomeprazole", "Ức chế dạ dày"),
    ("Phosphalugel (Chữ P)", "Trung hòa axit"),
    ("Berberin", "Tiêu chảy"),
    ("Men vi sinh (Probiotic)", "Hỗ trợ tiêu hóa"),
    ("Smecta", "Tiêu chảy"),

    # Tim mạch / Huyết áp / Tiểu đường
    ("Amlodipine 5mg", "Hạ huyết áp"),
    ("Losartan 50mg", "Hạ huyết áp"),
    ("Metformin 500mg", "Tiểu đường"),
    ("Atorvastatin 10mg", "Mỡ máu"),
    ("Aspirin 81mg", "Chống đông máu"),

    # Vitamin / Khoáng chất / Khác
    ("Vitamin C 500mg", "Tăng đề kháng"),
    ("Vitamin 3B (B1,B6,B12)", "Bổ thần kinh"),
    ("Canxi + D3", "Bổ xương"),
    ("Oresol", "Bù nước điện giải"),
    ("Natri Clorid 0.9%", "Nước muối sinh lý"),
    ("Glucosamine", "Bổ khớp"),
    ("Ginkgo Biloba", "Tuần hoàn não")
]


def gen_fullname(sex: str) -> str:
    ho = random.choice(HO)
    
    if sex == "M":
        ds_ten_dem = TEN_DEM_NAM
        ds_ten = TEN_NAM
    else:
        ds_ten_dem = TEN_DEM_NU
        ds_ten = TEN_NU
    
    ten = random.choice(ds_ten)

    # Tên 4 chữ với tỷ lệ 25%
    if random.random() < 0.25:
        # Lấy random.sample để tránh trùng tên đệm
        dem_list = random.sample(ds_ten_dem, k=2)
        
        # tên 4 chữ
        return f"{ho} {dem_list[0]} {dem_list[1]} {ten}"
    
    # Tên 3 chữ
    else:
        ten_dem = random.choice(ds_ten_dem)
        return f"{ho} {ten_dem} {ten}"

def gen_phone(prefix: str = "09") -> str:
    return prefix + randint_digits(8)

def gen_birthdate(min_year=1950, max_year=2022) -> dt.date:
    y = random.randint(min_year, max_year)
    m = random.randint(1, 12)

    if m == 2:
        d = random.randint(1, 28)
    elif m in [4, 6, 9, 11]:
        d = random.randint(1, 30)
    else:
        d = random.randint(1, 31)

    return dt.date(y, m, d)

def gen_room_code(i: int) -> str:
    return f"P{100 + i:03d}"