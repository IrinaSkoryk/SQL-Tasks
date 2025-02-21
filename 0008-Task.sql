-- #Easy #MAX #TOP
-- Show the first_name, last_name. hire_date of the most recently hired employee.

CREATE TABLE employees (
  employee_id INT PRIMARY KEY  
  , last_name TEXT  
  , first_name TEXT  
  , title TEXT  
  , title_of_courtesy TEXT  
  , birth_date DATE  
  , hire_date DATE  
  , address TEXT  
  , city TEXT  
  , region TEXT  
  , postal_code TEXT  
  , country TEXT  
  , home_phone TEXT  
  , extension TEXT 
  , reports_to INT
  , FOREIGN KEY (reports_to) REFERENCES employees (employee_id)
);

SELECT  
  first_name
  , last_name
  , hire_date
FROM employees
ORDER BY hire_date DESC
LIMIT 1;

-- Another solution

SELECT  
  first_name  
  , last_name  
  , MAX(hire_date) AS hire_date 
FROM employees;
