from backend.models.bed import Bed
from backend.db import db

class BedRepository:
    def get_bed_by_room_and_number(self, maphg, so):
        return Bed.query.filter_by(MAPHG=maphg, so=so).first()

    def add_bed(self, MAPHG, so, tinhtrang):
        new_bed = Bed(MAPHG, so, tinhtrang)
        db.session.add(new_bed)
        db.session.commit()
        return new_bed

    def update_bed(self, maphg, so, **kwargs):
        bed = self.get_bed_by_room_and_number(maphg, so)
        if not bed:
            return None
        for key, value in kwargs.items():
            if hasattr(bed, f"_{Bed.__name__}__{key}"):
                setattr(bed, f"_{Bed.__name__}__{key}", value)
        db.session.commit()
        return bed

    def delete_bed(self, maphg, so):
        bed = self.get_bed_by_room_and_number(maphg, so)
        if not bed:
            return False
        db.session.delete(bed)
        db.session.commit()
        return True