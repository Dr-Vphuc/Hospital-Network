from . import admin_bp, admin_required
from flask import render_template, jsonify
from backend.repositories.room_repository import RoomRepository

@admin_bp.route('/room', methods=['GET'])
@admin_required
def room():
    all_rooms_detail = RoomRepository().get_all_rooms_detail()
    
    return render_template('admin/room.html', all_rooms_detail=all_rooms_detail)

@admin_bp.route('/room/<string:room_id>', methods=['GET'])
@admin_required
def room_detail(room_id):
    patients_in_room_raw = RoomRepository().get_patients_in_room(room_id)
    
    patients_in_room = []
    for patient in patients_in_room_raw:
        patient = {
            'hoten': patient.Patient.hoten,
            'sdt': patient.Patient.sdt,
            'sdt_nguoidk': patient.Relative.sdt if patient.Relative else None,
            'tinhtrang': patient.Examination.tinhtrang if patient.Examination else None,
            'ngaynv': patient.NhapVien.ngaynv.strftime('%Y-%m-%d') if patient.NhapVien and patient.NhapVien.ngaynv else None,
        }
        patients_in_room.append(patient)
    
    return jsonify(patients_in_room)