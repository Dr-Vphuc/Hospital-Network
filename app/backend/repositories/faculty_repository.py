from app.backend.models.faculty import Faculty
from app.backend.db import db

class FacultyRepository:
    def get_faculty_by_id(self, faculty_id):
        return Faculty.query.filter_by(__id=faculty_id).first()

    def add_faculty(self, tenkhoa, matrg):
        new_faculty = Faculty(tenkhoa, matrg)
        db.session.add(new_faculty)
        db.session.commit()
        return new_faculty

    def update_faculty(self, faculty_id, **kwargs):
        faculty = self.get_faculty_by_id(faculty_id)
        if not faculty:
            return None
        for key, value in kwargs.items():
            if hasattr(faculty, f"_{Faculty.__name__}__{key}"):
                setattr(faculty, f"_{Faculty.__name__}__{key}", value)
        db.session.commit()
        return faculty

    def delete_faculty(self, faculty_id):
        faculty = self.get_faculty_by_id(faculty_id)
        if not faculty:
            return False
        db.session.delete(faculty)
        db.session.commit()
        return True