CREATE DATABASE funcDB; 
USE funcDB;
CREATE TABLE employees (
emp_id int,
emp_name varchar(50),
salary int,
join_date date,
dept varchar(50)
);
INSERT INTO employees VALUES
(1, 'Amit', 30000, '2021-05-10', 'HR'),
(2, 'Ravi', 50000, '2020-03-15', 'IT'),
(3, 'Neha', 70000, '2019-07-20', 'Finance'),
(4, 'Meena', 60000, '2022-01-12', 'IT');

SELECT UPPER(emp_name) AS emp_name_upper
FROM employees;
SELECT emp_name, LENGTH(emp_name) AS name_length
FROM employees;
SELECT CURDATE() AS today;
SELECT emp_name,
       TIMESTAMPDIFF(YEAR, join_date, CURDATE()) AS experience_years
FROM employees;

SELECT COUNT(*) AS total_employees
FROM employees;
SELECT AVG(salary) AS average_salary
FROM employees;
SELECT dept, SUM(salary) AS total_salary
FROM employees
GROUP BY dept;
SELECT MAX(salary) AS max_salary_IT
FROM employees
WHERE dept = 'IT';

SELECT emp_name, salary,
CASE
    WHEN salary < 40000 THEN 'Low'
    WHEN salary BETWEEN 40000 AND 60000 THEN 'Medium'
    ELSE 'High'
END AS salary_category
FROM employees;

SELECT emp_name, salary,
CASE
    WHEN salary >= 60000 THEN salary * 0.10
    ELSE salary * 0.05
END AS bonus_amount
FROM employees;






