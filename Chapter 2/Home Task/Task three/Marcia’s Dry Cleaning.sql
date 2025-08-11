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
WHERE phone LIKE '_23%'
-- WHERE SUBSTRING(phone, 2, 2) = '23';