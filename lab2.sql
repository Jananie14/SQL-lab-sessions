CREATE DATABASE customerDB;
USE customerDB;

CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    email VARCHAR(50),
    city VARCHAR(30),
    phone VARCHAR(15)
);
INSERT INTO customers VALUES
(1, 'Akhil', 'ak@gmail.com', 'Chennai', '9876543210'),
(2, 'Sharon', 'sha@gmail.com', 'Bangalore', '9876501234'),
(3, 'Mahe', 'mahe@gmail.com', 'Chennai', '9123456780'),
(4, 'Kishore', 'kishore@gmail.com', 'Pune', '9988776655');
SELECT * FROM customers;

SELECT customer_name, email
FROM customers
WHERE city = 'Chennai';
