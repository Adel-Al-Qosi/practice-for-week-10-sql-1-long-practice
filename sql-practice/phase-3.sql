-- Your code here
INSERT INTO customers (customer_name, phone) VALUES ('Rachel', 1111111111);

SELECT points FROM customers WHERE customer_name = 'Rachel';

UPDATE Customers SET points = (points + 1) WHERE customer_name = 'Rachel';

SELECT * FROM customers;