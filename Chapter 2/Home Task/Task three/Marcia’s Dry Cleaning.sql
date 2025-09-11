-- Question 1
SELECT *
FROM customer;

SELECT *
FROM invoice;

SELECT *
FROM invoice_item;

-- Question 2
SELECT  LastName, FirstName, Phone
FROM customer;

-- Question 3
SELECT  LastName, FirstName, Phone
FROM customer
WHERE firstName REGEXP 'Nikki';

-- Question 4
SELECT 	
		customer.LastName, 
        customer.FirstName, 
        customer.Phone, 
        invoice.DateIn, 
        invoice.DateOut
FROM customer, invoice
WHERE totalAmount > 100;

-- Question 5
SELECT 	LastName, FirstName, Phone
FROM customer
WHERE firstName REGEXP '^B';

-- Question 6
SELECT 	LastName, FirstName, Phone
FROM customer
WHERE lastName REGEXP 'cat';

-- Question 7
SELECT 	LastName, FirstName, Phone
FROM customer
WHERE phone LIKE '_23%';

-- Question 8
SELECT MAX(TotalAmount) AS Max_TotalAmount,
		MIN(TotalAmount) AS MinTotalAmount
FROM Invoice;

-- Question 9
SELECT AVG(TotalAmount) AS Average_TotalAmount
FROM Invoice;

-- Question 10
SELECT COUNT(*) AS Number_Of_Customers
FROM customer;

-- Question 11
SELECT lastName
FROM customer
GROUP BY lastName;

SELECT firstName
FROM customer
GROUP BY firstName;

-- Question 12
SELECT COUNT(firstName) AS First_name, COUNT(lastName) AS Last_name
FROM customer;

-- Question 13
SELECT LastName, FirstName, Phone
FROM customer
WHERE CustomerID IN (
    SELECT CustomerID
    FROM invoice
    WHERE TotalAmount > 100.00
)
ORDER BY LastName, FirstName DESC;

-- Question 14
SELECT 
    customer.lastName, 
    customer.firstName,
    customer.phone
FROM customer
WHERE customer.CustomerID IN (
    SELECT invoice.CustomerID
    FROM invoice
    WHERE invoice.TotalAmount > 100.00
)
ORDER BY customer.lastName, customer.firstName DESC;

-- Question 15
SELECT 
    customer.lastName, 
    customer.firstName,
    customer.phone
FROM customer
JOIN invoice ON customer.CustomerID = invoice.CustomerID
WHERE invoice.TotalAmount > 100.00
ORDER BY customer.LastName, customer.FirstName DESC;

-- Question 16
SELECT 
    customer.lastName, 
    customer.firstName,
    customer.phone
FROM customer
WHERE customer.CustomerID IN (
    SELECT invoice_item.itemNumber
    FROM invoice_item
    WHERE invoice_item.item = 'Dress Shirt'
)
ORDER BY customer.lastName, customer.firstName DESC;

-- Question 17
SELECT 
    customer.lastName, 
    customer.firstName,
    customer.phone
FROM customer
WHERE customer.CustomerID IN (
    SELECT invoice_item.itemNumber
    FROM invoice_item
    WHERE invoice_item.item = 'Dress Shirt'
)
ORDER BY customer.lastName, customer.firstName DESC;

-- Question 18
SELECT 
    customer.LastName, 
    customer.FirstName,
    customer.Phone
FROM customer
JOIN invoice ON customer.CustomerID = invoice_item.itemNumber
WHERE invoice_item.item = 'Dress Shirt'
ORDER BY customer.lastName, customer.firstName DESC;