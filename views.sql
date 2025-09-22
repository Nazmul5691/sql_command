-- Active: 1747405528919@@127.0.0.1@5432@test_db5
SELECT * FROM employees;


CREATE VIEW dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees GROUP BY department_name;


SELECT * FROM dept_avg_salary;



CREATE View text_view1
AS
SELECT employee_name, salary, department_name 
FROM employees 
WHERE department_name in 
(SELECT department_name FROM employees WHERE department_name LIKE '%R%');

SELECT * FROM text_view1;           --non materialized view


views
-- Simplifying complex queries
-- Improved security
-- Enhanced data abstraction