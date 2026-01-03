from backend.models.medicine import Medicine
from backend.db import db

class MedicineRepository:
    def get_medicine_by_id(self, medicine_id):
        return Medicine.query.filter_by(MATHUOC=medicine_id).first()

    def add_medicine(self, MATHUOC, tenthuoc, congdung, giatien):
        new_medicine = Medicine(MATHUOC, tenthuoc, congdung, giatien)
        db.session.add(new_medicine)
        db.session.commit()
        return new_medicine

    def update_medicine(self, medicine_id, **kwargs):
        medicine = self.get_medicine_by_id(medicine_id)
        if not medicine:
            return None
        for key, value in kwargs.items():
            if hasattr(medicine, f"_{Medicine.__name__}__{key}"):
                setattr(medicine, f"_{Medicine.__name__}__{key}", value)
        db.session.commit()
        return medicine

    def delete_medicine(self, medicine_id):
        medicine = self.get_medicine_by_id(medicine_id)
        if not medicine:
            return False
        db.session.delete(medicine)
        db.session.commit()
        return True
    
    def get_id_by_name(self, tenthuoc):
        medicine = Medicine.query.filter_by(tenthuoc=tenthuoc).first()
        return medicine.MATHUOC if medicine else None
    
    def get_next_medicine_id(self):
        last_medicine = Medicine.query.order_by(Medicine.MATHUOC.desc()).first()
        if not last_medicine:
            return 'DT001' 
        last_id_num = int(last_medicine.MATHUOC[2:])
        next_id_num = last_id_num + 1
        return f'DT{next_id_num:04d}'
    
    def get_id_by_name(self, tenthuoc):
        medicine = Medicine.query.filter_by(tenthuoc=tenthuoc).first()
        return medicine.MATHUOC if medicine else None
    
    def get_next_medicine_id(self):
        last_medicine = Medicine.query.order_by(Medicine.MATHUOC.desc()).first()
        if not last_medicine:
            return 'TH001'
        last_id_num = int(last_medicine.MATHUOC[2:])
        next_id_num = last_id_num + 1
        return f'TH{next_id_num:03d}'
    
    def get_medicine_id_by_name(self, tenthuoc):
        medicine = Medicine.query.filter_by(tenthuoc=tenthuoc).first()
        return medicine.MATHUOC if medicine else None