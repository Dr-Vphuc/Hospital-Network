from backend.repositories.inventory_repository import InventoryRepository
from backend.repositories.medicine_repository import MedicineRepository
from backend.models.medicine import Medicine

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
        table_data.sort(key=lambda x: x['name'])
        return table_data    
        
    def get_total_price(self):
        total_price = 0
        inventories = self.inventory_repo.get_all_inventories()
        for inventory in inventories:
            total_price += self.get_total_price_by_batch(inventory.MALO)
        return total_price
    
    def get_total_price_by_batch(self, malo):
        inventory = self.inventory_repo.get_inventory_by_id(malo)
        if not inventory:
            return 0
        medicine = Medicine.query.filter_by(MATHUOC=inventory.MATHUOC).first()
        if not medicine:
            return 0
        return inventory.soluong * medicine.giatien
    
    def add_medicine_batch(self, data):
        mathuoc = MedicineRepository().get_id_by_name(data['tenthuoc'])
        soluong = MEDICINES_PER_BATCH
        hsd = data['hsd']
        
        batch_number = data.get('solo')
        for i in range(batch_number):
            self.inventory_repo.add_inventory(mathuoc, soluong, hsd)
     
    def add_new_medicine_batch(self, data):
        MATHUOC = self.medicine_repo.get_next_medicine_id()
        tenthuoc = data['tenthuoc']
        congdung = data['congdung']
        giatien = data['giatien'] 
        
        new_medicine = self.medicine_repo.add_medicine(MATHUOC, tenthuoc, congdung, giatien)
        
        soluong = MEDICINES_PER_BATCH
        hsd = data['hsd']
        
        batch_number = data.get('solo')
        for i in range(batch_number):
            self.inventory_repo.add_inventory(MATHUOC, soluong, hsd)