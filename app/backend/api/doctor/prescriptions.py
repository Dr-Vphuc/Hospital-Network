from . import doctor_bp, doctor_required
from flask import render_template, jsonify, request
from flask_login import current_user
from backend.services.admin.examination_service import ExaminationService
from backend.repositories.faculty_repository import FacultyRepository
from backend.repositories.user_repository import UserRepository
from backend.services.admin.patient_service import PatientService
from backend.repositories.medicine_repository import MedicineRepository
from backend.repositories.inventory_repository import InventoryRepository
from backend.repositories.nhapvien_repository import NhapVienRepository
from backend.repositories.patient_repository import PatientRepository
from backend.repositories.bed_repository import BedRepository
from backend.repositories.nhapvien_repository import NhapVienRepository
from backend.api.auth.routes import register_patient
from datetime import datetime

@doctor_bp.route('/prescriptions', methods=['GET'])
@doctor_required
def prescriptions():
    # Use current_user from Flask-Login session, not URL parameters
    username = current_user.username
    doctor_faculty_id = UserRepository().get_faculty_id_by_doctor_username(username)
    doctor_name = UserRepository().get_doctorname_by_username(username)
    doctor_faculty_name = FacultyRepository().get_faculty_name_by_id(doctor_faculty_id)
        
    examination_service = ExaminationService()
    prescriptions = examination_service.get_all_prescriptions_with_patients(doctor_faculty_id)
    monitoring_data = []  
    
    return render_template(
        'doctor/prescriptions.html', 
        prescriptions=prescriptions,
        monitoring_data=monitoring_data,
        doctor_name=doctor_name,
        username=username,
        doctor_faculty_id=doctor_faculty_id,
        doctor_faculty_name=doctor_faculty_name
    )
    
@doctor_bp.route('/prescriptions/<string:patient_id>', methods=['GET'])
@doctor_required
def patient_monitoring(patient_id):
    examination_service = ExaminationService()
    monitoring_data = examination_service.get_examination_by_patient_id(patient_id)
    
    # Convert datetime objects to strings for JSON serialization
    for record in monitoring_data:
        if 'ngaykham' in record and record['ngaykham']:
            record['date'] = record['ngaykham'].strftime('%Y-%m-%d')
        if 'tinhtrang' in record:
            record['status'] = record['tinhtrang']
        if 'medicine_name' in record:
            record['medicine'] = record['medicine_name']
        # 'doctor' is already in the correct format
    
    return jsonify({'monitoring_data': monitoring_data})
    
@doctor_bp.route('/prescriptions/add-new', methods=['POST'])
@doctor_required
def add_new_prescription():
    data = request.get_json()
    
    current_docter_id = UserRepository().get_doctor_id_by_username(current_user.username)
    data['MABS'] = current_docter_id
    data['MAKHOA'] = UserRepository().get_faculty_id_by_doctor_username(current_user.username)
    data['MATHUOC'] = MedicineRepository().get_medicine_id_by_name(data['tenthuoc'])
    
    MABN = PatientService().add_patient(data)
    _, username, password = register_patient(MABN)
    data['MABN'] = MABN
    
        # If patient is being admitted as inpatient (Nội trú)
    if data['loaibenhnhan'] == 'Nội trú':
        
        # Find an available bed in the same faculty
        bed = BedRepository().get_first_available_bed(makhoa=data['MAKHOA'])
        
        if bed:
            # Create nhapvien record
            NhapVienRepository().add_nhapvien(
                MABN=data['MABN'],
                ngaynv=datetime.now(),
                MAPHG=bed.MAPHG,
                sogiuong=bed.so
            )
            
            # Mark bed as occupied
            BedRepository().update_bed(bed.MAPHG, bed.so, tinhtrang=1)
        else:
            return jsonify({'success': False, 'message': 'Không có giường trống'}), 400
    
    MADT = ExaminationService().add_prescription(data)
    data['MADT'] = MADT
    ExaminationService().add_examination(data)
    ExaminationService().add_chitiet_dh(data)
    
    InventoryRepository().divestiture_inventory_by_medicine_id(data['MATHUOC'], data['soluong'] * data['songayuong'])
    
    return jsonify({
        'message': 'New prescription and examination added successfully.',
        'account_created': True,
        'username': username,
        'password': password
    }), 201

@doctor_bp.route('/prescriptions/add-existing', methods=['POST'])
@doctor_required
def add_existing_prescription():
    data = request.get_json()
    
    current_docter_id = UserRepository().get_doctor_id_by_username(current_user.username)
    data['MABS'] = current_docter_id
    data['MAKHOA'] = UserRepository().get_faculty_id_by_doctor_username(current_user.username)
    data['MATHUOC'] = MedicineRepository().get_medicine_id_by_name(data['tenthuoc'])
        
    # If patient is being admitted as inpatient (Nội trú)
    if (data['loaibenhnhan'] == 'Nội trú') & (PatientRepository().get_patient_by_id(data['MABN']).loaibn == "Ngoại trú"):
        
        # Find an available bed in the same faculty
        bed = BedRepository().get_first_available_bed(makhoa=data['MAKHOA'])
        
        if bed:
            # Create nhapvien record
            NhapVienRepository().add_nhapvien(
                MABN=data['MABN'],
                ngaynv=datetime.now(),
                MAPHG=bed.MAPHG,
                sogiuong=bed.so
            )
            
            # Mark bed as occupied
            BedRepository().update_bed(bed.MAPHG, bed.so, tinhtrang=1)
        else:
            return jsonify({'success': False, 'message': 'Không có giường trống'}), 400
        
    PatientService().update_loai_patient(data)
    
    MADT = ExaminationService().add_prescription(data)
    data['MADT'] = MADT
    ExaminationService().add_examination(data)
    ExaminationService().add_chitiet_dh(data)
    
    InventoryRepository().divestiture_inventory_by_medicine_id(data['MATHUOC'], data['soluong'] * data['songayuong'])
    
    return jsonify({'message': 'New prescription and examination added successfully.'}), 201

@doctor_bp.route('/prescriptions/check-patient/<string:patient_id>', methods=['GET'])
@doctor_required
def check_existing_patient(patient_id):
    patient = PatientService().patients_repo.get_patient_by_id(patient_id)
    exists = patient is not None
    return jsonify({'exists': exists, 'patient_id': patient_id})

@doctor_bp.route('/prescriptions/check-loaibn/<string:patient_id>', methods=['GET'])
@doctor_required
def check_loaibenhnhan_for_form(patient_id):
    loaibenhnhan = PatientService().get_loaibenhnhan_by_id(patient_id)
    if loaibenhnhan == 'Nội trú':
        return jsonify({'loaibenhnhan': "Ngoại trú"})
    else:
        return jsonify({'loaibenhnhan': "Nội trú"})