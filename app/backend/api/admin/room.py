from . import admin_bp, admin_required
from flask import render_template

@admin_bp.route('/room', methods=['GET'])
@admin_required
def room():
    return render_template('admin/room.html')