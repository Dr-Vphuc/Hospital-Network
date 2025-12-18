from backend.models.patient import Patient
from backend.models.xuatvien import XuatVien
from backend.models.examination import Examination
from backend.models.nhapvien import NhapVien
from backend.models.bill import Bill
from datetime import timedelta
from backend.db import db
from datetime import date
from sqlalchemy import or_

class PatientRepository:
    def get_patient_by_id(self, patient_id):
        return Patient.query.filter_by(__id=patient_id).first()
    
    def get_all_patients(self):
        return Patient.query.all()
    
    def get_30days_revenue(self):
        """Get total revenue from patients discharged in the last 30 days
        SQL equivalent:
        WITH bn_xuatvien_30 AS (
            SELECT benhnhan.`MABN` FROM benhnhan
            LEFT JOIN xuatvien ON benhnhan.mabn = xuatvien.mabn
            WHERE xuatvien.ngayxv >= DATE_SUB(CURRENT_DATE, INTERVAL 30 DAY)
        )
        SELECT sum(tongtien) FROM hoadon
        WHERE hoadon.mabn IN (SELECT mabn FROM bn_xuatvien_30);
        """
        # Create subquery for patients discharged in last 30 days
        thirty_days_ago = date.today() - timedelta(days=30)
        
        subquery = (
            db.session.query(Patient.MABN)
            .join(XuatVien, Patient.MABN == XuatVien.MABN)
            .filter(XuatVien.ngayxv >= thirty_days_ago)
            .subquery()
        )
        
        # Calculate total revenue from bills for those patients
        result = (
            db.session.query(db.func.sum(Bill.tongtien))
            .filter(Bill.MABN.in_(db.select(subquery)))
            .scalar()
        )
        
        return result if result else 0.0 


    def get_total_current_inpatients(self):
        """Get total number of current inpatients
        SQL equivalent:
        SELECT * FROM benhnhan
        LEFT JOIN xuatvien ON benhnhan.mabn = xuatvien.mabn
        WHERE xuatvien.ngayxv IS NULL OR xuatvien.ngayxv > CURRENT_DATE
        """
        return (
            db.session.query(Patient)
            .outerjoin(XuatVien, Patient.MABN == XuatVien.MABN)
            .filter(
                or_(
                    XuatVien.ngayxv == None,
                    XuatVien.ngayxv > date.today()
                )
            )
            .all()
        )

    def add_patient(self, hoten, ngaysinh, sdt, diachi, loaibn):
        new_patient = Patient(hoten, ngaysinh, sdt, diachi, loaibn)
        db.session.add(new_patient)
        db.session.commit()
        return new_patient

    def update_patient(self, patient_id, **kwargs):
        patient = self.get_patient_by_id(patient_id)
        if not patient:
            return None
        for key, value in kwargs.items():
            if hasattr(patient, f"_{Patient.__name__}__{key}"):
                setattr(patient, f"_{Patient.__name__}__{key}", value)
        db.session.commit()
        return patient

    def delete_patient(self, patient_id):
        patient = self.get_patient_by_id(patient_id)
        if not patient:
            return False
        db.session.delete(patient)
        db.session.commit()
        return True

    def get_total_patients_by_month(self, month):
        """Get total number of patients admitted in the 'month' month"""
        # join the Patient and NhapVien tables
        patient_with_nhapvien = db.session.query(Patient).join(NhapVien, Patient.MABN == NhapVien.MABN)
        # filter by the month of ngaynv
        patients_in_month = patient_with_nhapvien.filter(db.extract('month', NhapVien.ngaynv) == month).all()
        return len(patients_in_month)