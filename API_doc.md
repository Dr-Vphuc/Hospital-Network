# Authentication API Documentation

**Base URL**: `/auth`

## Login

### Login User
- **URL**: `/login`
- **Method**: `POST`
- **Description**: Authenticates a user (Admin, Doctor, or Patient) and establishes a session.
- **Request Body** (Form Data):
  - `username`: User's username
  - `password`: User's password
- **Response**:
  - **Success**: Redirects (302) to the appropriate dashboard based on role:
    - `ADMIN` -> `/admin/overview`
    - `DOCTOR` -> `/doctor/doctors/examinations`
    - `BENHNHAN` -> `/patient/prescriptions`
  - **Failure**: Redirects (302) to login page with error parameter.

## Logout

### Logout User
- **URL**: `/logout`
- **Method**: `GET`
- **Description**: Logs out the current user and clears the session.
- **Response**: Redirects (302) to the login page.

---

# Admin API Documentation

**Base URL**: `/admin`

**Authentication**: All endpoints require the user to be logged in as an ADMIN.

## Doctors

### Get All Doctors
- **URL**: `/doctors`
- **Method**: `GET`
- **Description**: Returns the doctors management page.
- **Response**: HTML

### Get Doctor Examinations
- **URL**: `/doctors/<doctor_id>/examinations`
- **Method**: `GET`
- **Description**: Returns the examinations list for a specific doctor.
- **Response**: HTML

### Get Doctor Performance
- **URL**: `/doctors/<doctor_id>/performent`
- **Method**: `GET`
- **Description**: Returns performance metrics for a specific doctor.
- **Response**: HTML

### Add Doctor
- **URL**: `/doctors/add`
- **Method**: `POST`
- **Description**: Registers a new doctor and automatically creates a user account for them.
- **Request Body** (JSON):
  ```json
  {
    "hoten": "Nguyen Van A",
    "sdt": "0123456789",
    "phongkham": "P101",
    "bangcap": "Bác sĩ", 
    "khoa": "Khoa Noi"
  }
  ```
  *Note: `bangcap` options: 'Bác sĩ', 'Thạc sĩ', 'Tiến sĩ', 'Bác sĩ chuyên khoa I', 'Bác sĩ chuyên khoa II'*
- **Response** (JSON):
  ```json
  {
    "success": true,
    "message": "Added new doctor successfully.",
    "username": "generated_username",
    "password": "generated_password"
  }
  ```

## Patients

### Get All Patients
- **URL**: `/patients`
- **Method**: `GET`
- **Description**: Returns the patients management page.
- **Response**: HTML

### Get Patient Details
- **URL**: `/patients/<patient_id>`
- **Method**: `GET`
- **Description**: Returns examination history and relatives for a patient.
- **Response** (JSON):
  ```json
  {
    "examination_history": [
      {
        "ngaykham": "YYYY-MM-DD",
        "bacsi": "Doctor Name",
        "khoa": "Faculty Name",
        "thuoc": "Medicine Name",
        "tinhtrang": "Status"
      }
    ],
    "relatives": [
      {
        "hoten": "Relative Name",
        "quanhe": "Relationship",
        "sdt": "Phone Number",
        "diachi": "Address",
        "nguoigiamho": false
      }
    ]
  }
  ```

### Discharge Patient
- **URL**: `/patients/<patient_id>/discharge`
- **Method**: `POST`
- **Description**: Discharges a patient.
- **Response** (JSON):
  ```json
  {
    "success": true,
    "message": "Xuất viện thành công"
  }
  ```

## Pharmacy

### Get Pharmacy Inventory
- **URL**: `/pharmacy`
- **Method**: `GET`
- **Description**: Returns the pharmacy inventory page.
- **Response**: HTML

### Add Medicine Batch (Existing Medicine)
- **URL**: `/add-medicine-batch`
- **Method**: `POST`
- **Description**: Adds batches to an existing medicine.
- **Request Body** (JSON):
  ```json
  {
    "tenthuoc": "Medicine Name",
    "hsd": "YYYY-MM-DD",
    "solo": 5
  }
  ```
- **Response** (JSON):
  ```json
  {
    "success": true,
    "message": "Added new medicine batches successfully."
  }
  ```

### Add New Medicine and Batch
- **URL**: `/add-new-medicine-batch`
- **Method**: `POST`
- **Description**: Creates a new medicine and adds initial batches.
- **Request Body** (JSON):
  ```json
  {
    "tenthuoc": "New Medicine Name",
    "congdung": "Usage/Effect",
    "giatien": 10000,
    "hsd": "YYYY-MM-DD",
    "solo": 10
  }
  ```
- **Response** (JSON):
  ```json
  {
    "success": true,
    "message": "Added new medicine and its batches successfully."
  }
  ```

## Prescriptions

### Get Prescriptions
- **URL**: `/prescriptions`
- **Method**: `GET`
- **Description**: Returns the prescriptions management page.
- **Response**: HTML

### Get Patient Monitoring Data
- **URL**: `/prescriptions/<patient_id>`
- **Method**: `GET`
- **Description**: Returns monitoring data for a patient.
- **Response** (JSON):
  ```json
  {
    "monitoring_data": [
      {
        "date": "YYYY-MM-DD",
        "status": "Status",
        "medicine": "Medicine Name",
        "doctor": "Doctor Name",
        ...
      }
    ]
  }
  ```

## Room

### Get Rooms
- **URL**: `/room`
- **Method**: `GET`
- **Description**: Returns the room management page.
- **Response**: HTML

### Get Room Details
- **URL**: `/room/<room_id>`
- **Method**: `GET`
- **Description**: Returns list of patients in a specific room.
- **Response** (JSON):
  ```json
  [
    {
      "hoten": "Patient Name",
      "sdt": "Patient Phone",
      "sdt_nguoidk": "Relative Phone",
      "tinhtrang": "Condition",
      "ngaynv": "YYYY-MM-DD"
    }
  ]
  ```

## Overview

### Get Overview
- **URL**: `/overview`
- **Method**: `GET`
- **Description**: Returns the admin dashboard overview.
- **Response**: HTML

---

# Doctor API Documentation

**Base URL**: `/doctor`

**Authentication**: All endpoints require the user to be logged in as a DOCTOR.

## Doctors

### Get All Doctors
- **URL**: `/doctors`
- **Method**: `GET`
- **Description**: Returns the doctors management page.
- **Response**: HTML

### Get My Examinations
- **URL**: `/doctors/examinations`
- **Method**: `GET`
- **Description**: Returns the examinations list for the currently logged-in doctor.
- **Response**: HTML

### Get My Performance
- **URL**: `/doctors/performance`
- **Method**: `GET`
- **Description**: Returns performance metrics for the currently logged-in doctor.
- **Response**: HTML

### Add Doctor
- **URL**: `/doctors/add`
- **Method**: `POST`
- **Description**: Registers a new doctor and automatically creates a user account for them.
- **Request Body** (JSON):
  ```json
  {
    "hoten": "Nguyen Van A",
    "sdt": "0123456789",
    "phongkham": "P101",
    "bangcap": "Bác sĩ", 
    "khoa": "Khoa Noi"
  }
  ```
- **Response** (JSON):
  ```json
  {
    "success": true,
    "message": "Added new doctor successfully.",
    "username": "generated_username",
    "password": "generated_password"
  }
  ```

## Patients

### Get All Patients
- **URL**: `/patients`
- **Method**: `GET`
- **Description**: Returns the patients management page for the doctor's faculty.
- **Response**: HTML

### Get Patient Details
- **URL**: `/patients/<patient_id>`
- **Method**: `GET`
- **Description**: Returns examination history and relatives for a patient.
- **Response** (JSON):
  ```json
  {
    "examination_history": [
      {
        "ngaykham": "YYYY-MM-DD",
        "bacsi": "Doctor Name",
        "khoa": "Faculty Name",
        "thuoc": "Medicine Name",
        "tinhtrang": "Status"
      }
    ],
    "relatives": [
      {
        "hoten": "Relative Name",
        "quanhe": "Relationship",
        "sdt": "Phone Number",
        "diachi": "Address",
        "nguoigiamho": false
      }
    ]
  }
  ```

### Discharge Patient
- **URL**: `/patients/<patient_id>/discharge`
- **Method**: `POST`
- **Description**: Discharges a patient.
- **Response** (JSON):
  ```json
  {
    "success": true,
    "message": "Xuất viện thành công"
  }
  ```

## Prescriptions

### Get Prescriptions
- **URL**: `/prescriptions`
- **Method**: `GET`
- **Description**: Returns the prescriptions management page for the doctor's faculty.
- **Response**: HTML

### Get Patient Monitoring Data
- **URL**: `/prescriptions/<patient_id>`
- **Method**: `GET`
- **Description**: Returns monitoring data for a patient.
- **Response** (JSON):
  ```json
  {
    "monitoring_data": [
      {
        "date": "YYYY-MM-DD",
        "status": "Status",
        "medicine": "Medicine Name",
        "doctor": "Doctor Name",
        ...
      }
    ]
  }
  ```

### Add Prescription (New Patient)
- **URL**: `/prescriptions/add-new`
- **Method**: `POST`
- **Description**: Creates a new patient record and adds a prescription/examination. If `loaibenhnhan` is 'Nội trú', it automatically assigns an available bed in the doctor's faculty and creates an admission record. Also creates a user account for the patient.
- **Request Body** (JSON):
  ```json
  {
    "hoten": "Patient Name",
    "ngaysinh": "YYYY-MM-DD",
    "gioitinh": "Nam/Nu",
    "diachi": "Address",
    "sdt": "Phone",
    "cccd": "ID Card",
    "bhyt": "Insurance ID",
    "nghenghiep": "Job",
    "hoten_nguoithan": "Relative Name",
    "quanhe": "Relationship",
    "sdt_nguoithan": "Relative Phone",
    "diachi_nguoithan": "Relative Address",
    "tenthuoc": "Medicine Name",
    "soluong": 10,
    "songayuong": 5,
    "loaibenhnhan": "Nội trú/Ngoại trú",
    "tinhtrang": "Condition"
  }
  ```
- **Response** (JSON):
  ```json
  {
    "message": "New prescription and examination added successfully.",
    "account_created": true,
    "username": "generated_username",
    "password": "generated_password"
  }
  ```

### Add Prescription (Existing Patient)
- **URL**: `/prescriptions/add-existing`
- **Method**: `POST`
- **Description**: Adds a prescription/examination for an existing patient. It creates a new examination record, adds prescription details, and deducts the medicine quantity from the inventory. If the patient switches from 'Ngoại trú' to 'Nội trú', it assigns a bed and creates an admission record.
- **Request Body** (JSON):
  ```json
  {
    "MABN": "BN00001",
    "tenthuoc": "Medicine Name",
    "soluong": 10,
    "songayuong": 5,
    "loaibenhnhan": "Nội trú/Ngoại trú",
    "tinhtrang": "Condition"
  }
  ```
- **Response** (JSON):
  ```json
  {
    "message": "New prescription and examination added successfully."
  }
  ```

### Check Patient Existence
- **URL**: `/prescriptions/check-patient/<patient_id>`
- **Method**: `GET`
- **Description**: Checks if a patient exists by ID.
- **Response** (JSON):
  ```json
  {
    "exists": true,
    "patient_id": "BN001"
  }
  ```

### Check Patient Type
- **URL**: `/prescriptions/check-loaibn/<patient_id>`
- **Method**: `GET`
- **Description**: Returns the opposite patient type (used for toggling form state).
- **Response** (JSON):
  ```json
  {
    "loaibenhnhan": "Nội trú" 
  }
  ```

---

# Patient API Documentation

**Base URL**: `/patient`

**Authentication**: All endpoints require the user to be logged in as a PATIENT (BENHNHAN).

## Prescriptions

### Get My Prescriptions
- **URL**: `/prescriptions`
- **Method**: `GET`
- **Description**: Returns the prescriptions history for the logged-in patient.
- **Response**: HTML

## Profile

### Get Profile
- **URL**: `/profile`
- **Method**: `GET`
- **Description**: Returns the patient's profile page, including personal info, relatives, insurance, and examination history.
- **Response**: HTML

### Change Password
- **URL**: `/change-password`
- **Method**: `POST`
- **Description**: Changes the patient's password.
- **Request Body** (JSON):
  ```json
  {
    "current_password": "old_password",
    "new_password": "new_password"
  }
  ```
- **Response** (JSON):
  ```json
  {
    "success": true,
    "message": "Đổi mật khẩu thành công!"
  }
  ```

### Add/Update Health Insurance (BHYT)
- **URL**: `/bhyt`
- **Method**: `POST`
- **Description**: Adds or updates the patient's health insurance information.
- **Request Body** (JSON):
  ```json
  {
    "mabhyt": "DN4790...",
    "ngaydk": "YYYY-MM-DD",
    "ngayhh": "YYYY-MM-DD"
  }
  ```
- **Response** (JSON):
  ```json
  {
    "success": true,
    "message": "Lưu thông tin BHYT thành công!"
  }
  ```

### Add Relative
- **URL**: `/relative`
- **Method**: `POST`
- **Description**: Adds a new relative for the patient.
- **Request Body** (JSON):
  ```json
  {
    "hoten": "Relative Name",
    "quanhe": "Relationship",
    "sdt": "Phone Number",
    "diachi": "Address"
  }
  ```
- **Response** (JSON):
  ```json
  {
    "success": true,
    "message": "Thêm thân nhân thành công!"
  }
  ```

