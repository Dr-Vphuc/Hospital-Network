from backend.models.room import Room
from backend.db import db

class RoomRepository:
    def get_room_by_id(self, room_id):
        return Room.query.filter_by(__id=room_id).first()

    def add_room(self, makhoa, sogiuong, gia):
        new_room = Room(makhoa, sogiuong, gia)
        db.session.add(new_room)
        db.session.commit()
        return new_room

    def update_room(self, room_id, **kwargs):
        room = self.get_room_by_id(room_id)
        if not room:
            return None
        for key, value in kwargs.items():
            if hasattr(room, f"_{Room.__name__}__{key}"):
                setattr(room, f"_{Room.__name__}__{key}", value)
        db.session.commit()
        return room

    def delete_room(self, room_id):
        room = self.get_room_by_id(room_id)
        if not room:
            return False
        db.session.delete(room)
        db.session.commit()
        return True