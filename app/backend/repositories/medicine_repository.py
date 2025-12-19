from backend.models.medicine import Medicine
from backend.db import db

class MedicineRepository:
    def get_medicine_by_id(self, medicine_id):
        return Medicine.query.filter_by(MATHUOC=medicine_id).first()

    def add_medicine(self, tenthuoc, congdung, hsd, giatien):
        new_medicine = Medicine(tenthuoc, congdung, hsd, giatien)
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