USE cape_codd;

-- Question 2.17
SELECT SKU, SKU_Description
FROM inventory;

-- Question 2.18
SELECT SKU_Description, SKU
FROM inventory;

-- Question 2.19
SELECT WarehouseId
FROM inventory;

-- Question 2.20
SELECT DISTINCT WarehouseId
FROM inventory;

-- Question 2.21
SELECT 
	WarehouseId,
	SKU,
    SKU_Description,
    QuantityOnHand,
    QuantityOnOrder
    
FROM inventory;

-- Question 2.22
SELECT * FROM inventory;

-- Question 2.23
SELECT *
FROM inventory
WHERE QuantityOnHand > 0;

-- Question 2.24
SELECT SKU, SKU_Description
FROM inventory
WHERE QuantityOnHand = 0;

-- Question 2.25
SELECT SKU, SKU_Description, WarehouseId
FROM inventory
WHERE QuantityOnHand = 0
ORDER BY WarehouseId;

-- Question 2.26
SELECT SKU, SKU_Description, WarehouseId
FROM inventory
WHERE QuantityOnHand > 0
ORDER BY WarehouseId DESC, SKU;

-- Question 2.27
SELECT SKU, SKU_Description, WarehouseId
FROM inventory
WHERE QuantityOnHand = 0 and QuantityOnOrder > 0
ORDER BY WarehouseId DESC, SKU;

-- Question 2.28
SELECT SKU, SKU_Description, WarehouseId
FROM inventory
WHERE QuantityOnHand = 0 or QuantityOnOrder = 0
ORDER BY WarehouseId DESC, SKU;

-- Question 2.29
SELECT SKU, SKU_Description, WarehouseId, QuantityOnHand
FROM inventory
WHERE QuantityOnHand >= 1 and QuantityOnHand <= 10
ORDER BY WarehouseId DESC, SKU;

-- Question 2.30
SELECT SKU, SKU_Description, WarehouseId, QuantityOnHand
FROM inventory
WHERE QuantityOnHand BETWEEN 1 and 10
ORDER BY WarehouseId DESC, SKU;

-- Question 2.31
SELECT DISTINCT SKU, SKU_Description
FROM inventory
WHERE SKU_Description REGEXP '^Half-Dome';

-- Question 2.32
SELECT DISTINCT SKU, SKU_Description
FROM inventory
WHERE SKU_Description REGEXP 'Climb';

-- Question 2.33
SELECT DISTINCT SKU, SKU_Description
FROM inventory
WHERE SKU_Description LIKE '__d';

-- Question 2.34
SELECT COUNT(QuantityOnHand) AS Total_No_of_Items,
		SUM(QuantityOnHand) AS Total_Items,
        AVG(QuantityOnHand) AS Average_Values,
        MIN(QuantityOnHand) AS Minimum_Items,
        MAX(QuantityOnHand) AS Maximum_Items,
        GROUP_CONCAT(QuantityOnHand) AS Concatenated_values        
FROM inventory;

-- Question 2.35
-- COUNT -> Counts the number of rows
-- SUM -> Returns the total sum of the row

