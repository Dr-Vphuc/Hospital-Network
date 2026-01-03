from sqlalchemy import and_
from backend.models.bed import Bed
from backend.models.room import Room
from backend.db import db

class BedRepository:
    def get_bed_by_room_and_number(self, maphg, so):
        return Bed.query.filter(and_(Bed.MAPHG==maphg, Bed.so==so)).first()

    def add_bed(self, MAPHG, so, tinhtrang):
        new_bed = Bed(MAPHG, so, tinhtrang)
        db.session.add(new_bed)
        db.session.commit()
        return new_bed

    def update_bed(self, maphg, so, tinhtrang=None):
        bed = (
            db.session.query(Bed)
            .filter(and_(Bed.MAPHG==maphg, Bed.so==so))
            .first()
        )
        if not bed:
            return None
        if tinhtrang is not None:
            bed.tinhtrang = tinhtrang
        db.session.commit()
        return bed

    def delete_bed(self, maphg, so):
        bed = self.get_bed_by_room_and_number(maphg, so)
        if not bed:
            return False
        db.session.delete(bed)
        db.session.commit()
        return True
    
    def get_first_available_bed(self, makhoa=None):
        """Get the first available bed (tinhtrang=0), optionally filtered by faculty"""
        query = db.session.query(Bed).filter(Bed.tinhtrang == 0)
        
        if makhoa:
            # Join with Room to filter by faculty
            query = query.join(Room, Bed.MAPHG == Room.MAPHG).filter(Room.MAKHOA == makhoa)
        
        return query.first()