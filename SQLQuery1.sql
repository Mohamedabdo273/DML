
CREATE DATABASE CompanyDB;

USE CompanyDB;
GO

CREATE SCHEMA Sales
go

create sequence i
as int
start with 1
increment by 1

CREATE TABLE Sales.employees (
    employee_id int NOT NULL PRIMARY KEY Default(next value for i),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2)
);

ALTER TABLE Sales.employees
ADD hire_date DATE;

SELECT * FROM Sales.employees;

SELECT first_name, last_name FROM Sales.employees;

SELECT first_name+ ' '+ last_name AS full_name FROM Sales.employees;

SELECT AVG(salary) AS average_salary FROM Sales.employees;

SELECT * FROM Sales.employees WHERE salary > 50000;

SELECT * FROM Sales.employees WHERE YEAR(hire_date) = 2020;

SELECT * FROM Sales.employees WHERE last_name LIKE 'S%';

SELECT top(10) * FROM Sales.employees ORDER BY salary DESC;

SELECT * FROM Sales.employees WHERE salary BETWEEN 40000 AND 60000;

SELECT * FROM Sales.employees WHERE first_name LIKE '%man%' OR last_name LIKE '%man%';

SELECT * FROM Sales.employees WHERE hire_date IS NULL;

SELECT * FROM Sales.employees WHERE salary IN (40000, 45000, 50000);

SELECT * FROM Sales.employees WHERE hire_date BETWEEN '2020-01-01' AND '2021-01-01';

SELECT * FROM Sales.employees ORDER BY salary DESC;

SELECT top(5) * FROM Sales.employees ORDER BY last_name;

SELECT * FROM Sales.employees WHERE salary > 55000 AND YEAR(hire_date) = 2020;

SELECT * FROM Sales.employees WHERE first_name IN ('John', 'Jane');

SELECT * FROM Sales.employees WHERE salary <= 55000 AND hire_date > '2022-01-01';

SELECT * FROM Sales.employees WHERE salary > (SELECT AVG(salary) FROM Sales.employees);

SELECT * FROM Sales.employees ORDER BY salary DESC 
OFFSET 2 ROWS 
FETCH NEXT 4 ROWS ONLY;

SELECT * FROM Sales.employees WHERE hire_date > '2021-01-01' ORDER BY last_name, first_name;

SELECT * FROM Sales.employees WHERE salary > 50000 AND last_name NOT LIKE 'A%';

SELECT * FROM Sales.employees WHERE salary IS NOT NULL;

SELECT * FROM Sales.employees 
WHERE (first_name LIKE '%e%' OR first_name LIKE '%i%' OR last_name LIKE '%e%' OR last_name LIKE '%i%')
AND salary > 45000;
