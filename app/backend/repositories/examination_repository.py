from backend.models.examination import Examination
from backend.db import db

class ExaminationRepository:
    def get_examination_by_maskb(self, maskb):
        return Examination.query.filter_by(MASKB=maskb).first()

    def add_examination(self, MASKB, MABN, MADT, MAKHOA, ngaykham, tenbenh, giaidoan, tinhtrang):
        new_examination = Examination(MASKB, MABN, MADT, MAKHOA, ngaykham, tenbenh, giaidoan, tinhtrang)
        db.session.add(new_examination)
        db.session.commit()
        return new_examination

    def update_examination(self, maskb, **kwargs):
        examination = self.get_examination_by_maskb(maskb)
        if not examination:
            return None
        for key, value in kwargs.items():
            if hasattr(examination, key):
                setattr(examination, key, value)
        db.session.commit()
        return examination

    def delete_examination(self, maskb):
        examination = self.get_examination_by_maskb(maskb)
        if not examination:
            return False
        db.session.delete(examination)
        db.session.commit()
        return True
    
    def get_all_examinations_today(self):
        return len(Examination.query.filter_by(ngaykham=db.func.current_date()).all())