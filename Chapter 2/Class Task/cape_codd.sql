use cape_codd;

-- Question 2.40
SELECT inventory.SKU,
		inventory.SKU_Description,
		warehouse.WarehouseID,
        warehouse.WarehouseCity,
        warehouse.WarehouseState
FROM warehouse, inventory
WHERE warehouse.WarehouseCity = 'Atlanta' and warehouse.WarehouseCity = 'Bangor' or warehouse.WarehouseCity = 'Chicago';

-- Question 2.41
SELECT inventory.SKU,
		inventory.SKU_Description,
		warehouse.WarehouseID,
        warehouse.WarehouseCity,
        warehouse.WarehouseState
FROM warehouse, inventory
WHERE warehouse.WarehouseCity IN('Atlanta', 'Bangor','Chicago');

-- Question 2.42
SELECT inventory.SKU,
		inventory.SKU_Description,
		warehouse.WarehouseID,
        warehouse.WarehouseCity,
        warehouse.WarehouseState
FROM warehouse, inventory
WHERE warehouse.WarehouseCity <> 'Atlanta' and warehouse.WarehouseCity <> 'Bangor' or warehouse.WarehouseCity <> 'Chicago';

-- Question 2.43
SELECT inventory.SKU,
		inventory.SKU_Description,
		warehouse.WarehouseID,
        warehouse.WarehouseCity,
        warehouse.WarehouseState
FROM warehouse, inventory
WHERE warehouse.WarehouseCity NOT IN ('Atlanta','Bangor','Chicago');

-- Question 2.44
