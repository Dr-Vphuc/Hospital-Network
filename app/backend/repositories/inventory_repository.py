from backend.models.inventory import Inventory
from backend.models.medicine import Medicine
from backend.db import db

class InventoryRepository:
    def get_inventory_by_id(self, malo):
        return Inventory.query.filter_by(MALO=malo).first()

    def add_inventory(self, mathuoc, soluong, hsd):
        new_inventory = Inventory(mathuoc, soluong, hsd)
        db.session.add(new_inventory)
        db.session.commit()
        return new_inventory

    def update_inventory(self, malo, **kwargs):
        inventory = self.get_inventory_by_id(malo)
        if not inventory:
            return None
        for key, value in kwargs.items():
            if hasattr(inventory, key):
                setattr(inventory, key, value)
        db.session.commit()
        return inventory

    def delete_inventory(self, malo):
        inventory = self.get_inventory_by_id(malo)
        if not inventory:
            return False
        db.session.delete(inventory)
        db.session.commit()
        return True
    
    def get_all_inventories(self):
        return Inventory.query.all()
    
    def get_inventories_with_medicine_names(self):
        results = db.session.query(Inventory, Medicine.tenthuoc).join(Medicine, Inventory.MATHUOC == Medicine.MATHUOC).all()
        inventory_list = []
        for inventory, tenthuoc in results:
            inventory_data = {
                'MALO': inventory.MALO,
                'MATHUOC': inventory.MATHUOC,
                'soluong': inventory.soluong,
                'tenthuoc': tenthuoc,
                'hsd': inventory.hsd
            }
            inventory_list.append(inventory_data)
        return inventory_list
    
    def count_batches_by_medicine(self, mathuoc):
        return Inventory.query.filter_by(MATHUOC=mathuoc).count()
    
    def total_quantity_by_medicine(self, mathuoc):
        total = db.session.query(db.func.sum(Inventory.soluong)).filter_by(MATHUOC=mathuoc).scalar()
        return total if total else 0