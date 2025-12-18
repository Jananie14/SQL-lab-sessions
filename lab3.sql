CREATE DATABASE OrderDB1;
USE OrderDB1;

CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    amount INT,
    order_date DATE
);
SET autocommit = 0;
START TRANSACTION;

INSERT INTO orders (order_id, customer_name, amount, order_date)
VALUES (1, 'Amit', 5000, '2025-01-01');
SAVEPOINT sp1;
SELECT * FROM orders;

INSERT INTO orders (order_id, customer_name, amount, order_date)
VALUES (2, 'Ravi', 7000, '2025-01-02');
SAVEPOINT sp2;
SELECT * FROM orders;

INSERT INTO orders (order_id, customer_name, amount, order_date)
VALUES (3, 'Neha', 9000, '2025-01-03');
SAVEPOINT sp3;
SELECT * FROM orders;

ROLLBACK TO sp2;
COMMIT;
SELECT * FROM orders;
