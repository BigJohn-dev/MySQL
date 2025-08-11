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
SELECT CONCAT(SKU_Description, 'is located in', warehouseCity) AS ItemLocation
FROM warehouse, inventory;

-- Question 2.45
SELECT inventory.SKU,
		inventory.SKU_Description,
		inventory.WarehouseID
FROM warehouse, inventory
WHERE warehouse.manager = 'Lucille Smith' ;

-- Question 2.46
SELECT inventory.SKU,
		inventory.SKU_Description,
		inventory.WarehouseID
FROM warehouse, inventory
WHERE inventory.warehouseId = warehouse.warehouseId
		AND warehouse.manager = 'Lucille Smith';
        
-- Question 2.47
SELECT inventory.SKU,
		inventory.SKU_Description,
		inventory.WarehouseID
FROM inventory
JOIN warehouse
ON inventory.warehouseId = warehouse.warehouseId
	  AND warehouse.manager = 'Lucille Smith'
      
-- Question 2.48

