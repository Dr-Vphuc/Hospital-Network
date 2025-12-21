from . import admin_bp, admin_required
from flask import render_template
from backend.repositories.room_repository import RoomRepository

@admin_bp.route('/room', methods=['GET'])
@admin_required
def room():
    all_rooms_detail = RoomRepository().get_all_rooms_detail()
    
    return render_template('admin/room.html', all_rooms_detail=all_rooms_detail)