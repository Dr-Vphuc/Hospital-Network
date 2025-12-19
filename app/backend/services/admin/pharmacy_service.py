from backend.repositories.inventory_repository import InventoryRepository
from backend.repositories.medicine_repository import MedicineRepository

MEDICINES_PER_BATCH = 250

class PharmacyService:
    def __init__(self):
        self.inventory_repo = InventoryRepository()
        self.medicine_repo = MedicineRepository()

    def get_inventory_status_table(self):
        inventories = self.inventory_repo.get_all_inventories()
        table_data = []
        for inventory in inventories:
            medicine = self.medicine_repo.get_medicine_by_id(inventory.MATHUOC)
            if medicine:
                table_data.append({
                    "name": medicine.tenthuoc,
                    "quantity": inventory.soluong,
                    "max_quantity": MEDICINES_PER_BATCH,
                    "expiry_date": inventory.hsd,
                    "batch_count": self.inventory_repo.count_batches_by_medicine(inventory.MATHUOC),
                    "total_quantity": self.inventory_repo.total_quantity_by_medicine(inventory.MATHUOC),
                    "total_stock_level": MEDICINES_PER_BATCH * self.inventory_repo.count_batches_by_medicine(inventory.MATHUOC)
                })
        return table_data    
        
    