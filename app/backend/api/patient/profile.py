from . import patient_bp, patient_required
from flask import jsonify, render_template, request
from flask_login import current_user
from backend.repositories.user_repository import UserRepository
from backend.repositories.patient_repository import PatientRepository
from backend.repositories.examination_repository import ExaminationRepository
from backend.models.bhyt import BHYT
from backend.models.relative import Relative
from backend.db import db
from datetime import datetime
from werkzeug.security import generate_password_hash, check_password_hash

@patient_bp.route('/profile', methods=['GET'])
@patient_required
def profile():
    # Get patient info
    user_repo = UserRepository()
    patient_repo = PatientRepository()
    
    patient_name = user_repo.get_patientname_by_username(current_user.username)
    patient_id = current_user.ref_id
    patient = patient_repo.get_patient_by_id(patient_id)
    
    # Get relatives
    relatives = patient_repo.get_relatives_by_patient_id(patient_id)
    
    # Get BHYT (health insurance)
    bhyt = BHYT.query.filter_by(MABN=patient_id).first()
    
    # Get examination history
    examination_repo = ExaminationRepository()
    examinations = examination_repo.get_all_examinations_by_patient(patient_id)
    
    # Calculate stats
    total_examinations = len(examinations) if examinations else 0
    current_status = patient.loaibn if patient else 'N/A'
    
    return render_template(
        'patient/profile.html', 
        username=patient_name,
        patient=patient,
        patient_id=patient_id,
        relatives=relatives,
        bhyt=bhyt,
        examinations=examinations,
        total_examinations=total_examinations,
        current_status=current_status,
        current_date=datetime.now()
        )

@patient_bp.route('/change-password', methods=['POST'])
@patient_required
def change_password():
    data = request.get_json()
    current_password = data.get('current_password')
    new_password = data.get('new_password')
    
    if not current_password or not new_password:
        return jsonify({'success': False, 'message': 'Vui lòng điền đầy đủ thông tin!'}), 400
    
    # Get current user
    user_repo = UserRepository()
    user = user_repo.get_user_by_username(current_user.username)
    
    if not user:
        return jsonify({'success': False, 'message': 'Không tìm thấy người dùng!'}), 404
    
    # Verify current password
    if not check_password_hash(user.password, current_password):
        return jsonify({'success': False, 'message': 'Mật khẩu hiện tại không đúng!'}), 401
    
    # Update password
    user.password = generate_password_hash(new_password)
    db.session.commit()
    
    return jsonify({'success': True, 'message': 'Đổi mật khẩu thành công!'}), 200

@patient_bp.route('/bhyt', methods=['POST'])
@patient_required
def add_or_update_bhyt():
    data = request.get_json()
    mabhyt = data.get('mabhyt')
    ngaydk = data.get('ngaydk')
    ngayhh = data.get('ngayhh')
    
    if not mabhyt or not ngaydk or not ngayhh:
        return jsonify({'success': False, 'message': 'Vui lòng điền đầy đủ thông tin!'}), 400
    
    patient_id = current_user.ref_id
    
    try:
        # Check if BHYT already exists
        bhyt = BHYT.query.filter_by(MABN=patient_id).first()
        
        if bhyt:
            # Update existing BHYT
            bhyt.MABHYT = mabhyt
            bhyt.ngaydk = datetime.strptime(ngaydk, '%Y-%m-%d').date()
            bhyt.ngayhh = datetime.strptime(ngayhh, '%Y-%m-%d').date()
        else:
            # Create new BHYT
            bhyt = BHYT(
                MABHYT=mabhyt,
                MABN=patient_id,
                ngaydk=datetime.strptime(ngaydk, '%Y-%m-%d').date(),
                ngayhh=datetime.strptime(ngayhh, '%Y-%m-%d').date()
            )
            db.session.add(bhyt)
        
        db.session.commit()
        return jsonify({'success': True, 'message': 'Lưu thông tin BHYT thành công!'}), 200
    
    except Exception as e:
        db.session.rollback()
        return jsonify({'success': False, 'message': f'Lỗi: {str(e)}'}), 500

@patient_bp.route('/relative', methods=['POST'])
@patient_required
def add_relative():
    data = request.get_json()
    hoten = data.get('hoten')
    quanhe = data.get('quanhe')
    sdt = data.get('sdt')
    diachi = data.get('diachi')
    
    if not hoten or not quanhe:
        return jsonify({'success': False, 'message': 'Vui lòng điền đầy đủ họ tên và quan hệ!'}), 400
    
    patient_id = current_user.ref_id
    
    try:
        # Create new relative
        relative = Relative(
            MABN=patient_id,
            hoten=hoten,
            quanhe=quanhe,
            sdt=sdt,
            diachi=diachi
        )
        db.session.add(relative)
        db.session.commit()
        
        return jsonify({'success': True, 'message': 'Thêm thân nhân thành công!'}), 200
    
    except Exception as e:
        db.session.rollback()
        return jsonify({'success': False, 'message': f'Lỗi: {str(e)}'}), 500