use cape_codd;

SELECT inventory.SKU,
		inventory.SKU_Description,
		warehouse.WarehouseID,
        warehouse.WarehouseCity,
        warehouse.WarehouseState
FROM warehouse, inventory
WHERE warehouse.WarehouseCity = 'Atlanta' and warehouse.WarehouseCity = 'Bangor' or warehouse.WarehouseCity = 'Chicago'