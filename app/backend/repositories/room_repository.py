from backend.models.room import Room
from backend.models.faculty import Faculty
from backend.models.building import Building
from backend.models.bed import Bed
from backend.models.patient import Patient
from backend.models.nhapvien import NhapVien
from backend.models.xuatvien import XuatVien
from backend.models.relative import Relative
from backend.models.examination import Examination
from backend.db import db
from datetime import datetime
from sqlalchemy import or_
from sqlalchemy import and_, func

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
    
    def get_all_rooms_detail(self):
        """
        SQL :
        select phongbenh.`MAPHG`, khoa.tenkhoa, toanha.tentoa, count(*) - sum(giuong.tinhtrang) as 'Số giường trống' from phongbenh
        join khoa on phongbenh.makhoa = khoa.makhoa
        join giuong on phongbenh.maphg = giuong.maphg
        join toanha on phongbenh.`MAKHOA` = toanha.`MAKHOA`
        group by phongbenh.maphg
        """
        room_detail = (
            db.session.query(
                Room.MAPHG,
                Faculty.tenkhoa,
                Building.tentoa,
                (db.func.sum(Bed.tinhtrang)).label('so_giuong_trong'),
                Room.sogiuong
            )
            .join(Faculty, Room.MAKHOA == Faculty.MAKHOA)
            .join(Bed, Room.MAPHG == Bed.MAPHG)
            .join(Building, Room.MAKHOA == Building.MAKHOA)
            .group_by(Room.MAPHG)
            .all()
        )
        
        result = []
        for detail in room_detail:
            result.append({
                'MAPHG': detail.MAPHG,
                'tenkhoa': detail.tenkhoa,
                'tentoa': detail.tentoa,
                'so_giuong_trong': detail.so_giuong_trong,
                'tong_giuong': db.session.query(Bed).filter(Bed.MAPHG == detail.MAPHG).count()
            })
            
        return result
    
    def get_patients_in_room(self, room_id):
        """
        Get all patients currently admitted in the specified room.
        """

        # subquery: latest ngaykham per patient
        latest_exam_subq = (
            db.session.query(
            Examination.MABN.label('MABN'),
            func.max(Examination.ngaykham).label('max_ngaykham')
            )
            .group_by(Examination.MABN)
            .subquery()
        )

        patients = (
            db.session.query(Patient, Relative, Examination, NhapVien)
            .join(NhapVien, Patient.MABN == NhapVien.MABN)
            .outerjoin(XuatVien, Patient.MABN == XuatVien.MABN)
            .outerjoin(Relative, Patient.MABN == Relative.MABN)
            # join to the subquery to restrict to the latest examination per patient
            .join(latest_exam_subq, latest_exam_subq.c.MABN == Patient.MABN)
            .join(
            Examination,
            and_(
                Examination.MABN == Patient.MABN,
                Examination.ngaykham == latest_exam_subq.c.max_ngaykham
            )
            )
            .filter(
            NhapVien.MAPHG == room_id,
            or_(
                XuatVien.ngayxv == None,
                XuatVien.ngayxv > datetime.now()
            ),
            NhapVien.ngaynv <= datetime.now()
            )
            .all()
        )
        
        return patients