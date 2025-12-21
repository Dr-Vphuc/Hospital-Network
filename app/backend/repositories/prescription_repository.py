from backend.models.prescription import Prescription
from backend.models.examination import Examination
from backend.models.patient import Patient
from backend.models.chitiet_dh import ChiTietDH
from backend.models.medicine import Medicine
from backend.models.doctor import Doctor
from backend.db import db

class PrescriptionRepository:
    def get_prescription_by_madt(self, madt):
        return Prescription.query.filter_by(MADT=madt).first()

    def add_prescription(self, MADT, MABS):
        new_prescription = Prescription(MADT, MABS)
        db.session.add(new_prescription)
        db.session.commit()
        return new_prescription

    def update_prescription(self, madt, **kwargs):
        prescription = self.get_prescription_by_madt(madt)
        if not prescription:
            return None
        for key, value in kwargs.items():
            if hasattr(prescription, key):
                setattr(prescription, key, value)
        db.session.commit()
        return prescription

    def delete_prescription(self, madt):
        prescription = self.get_prescription_by_madt(madt)
        if not prescription:
            return False
        db.session.delete(prescription)
        db.session.commit()
        return True
    
    def get_all_prescriptions(self):
        return Prescription.query.all()
    
    def get_all_prescriptions_with_patients(self):
        prescriptions_with_patients = (
            db.session.query(Prescription, Patient, Examination, ChiTietDH, Medicine, Doctor)
            .join(Patient, Prescription.MABN == Patient.MABN)
            .join(Examination, Examination.MADT == Prescription.MADT)
            .join(ChiTietDH, ChiTietDH.MADT == Prescription.MADT)
            .join(Medicine, Medicine.MATHUOC == ChiTietDH.MATHUOC)
            .join(Doctor, Doctor.MABS == Prescription.MABS)
            .order_by(Examination.ngaykham.desc())
            .all()
        )
        
        results = []
        for prescription, patient, examination, chitietdh, medicine, doctor in prescriptions_with_patients:
            record = {
                'id': examination.MASKB,
                'patient_id': patient.MABN,
                'patient_name': patient.hoten,
                'status': examination.tinhtrang,
                'medicine': medicine.tenthuoc,
                'dosage_frequency': f'{chitietdh.soluong} viên/ngày, {chitietdh.songayuong} ngày',
                'prescribing_doctor': doctor.hoten,
                'date': examination.ngaykham,
            }
            results.append(record)
        
        return results