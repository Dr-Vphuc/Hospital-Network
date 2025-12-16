from . import admin_bp

@admin_bp.route('/overview', methods=['GET'])
def admin_overview():
    return "Admin Overview Page"