-- #Hard #COUNT #GROUP_BY #CASE #JOIN #ORDER_BY #aggregation #aggregate_function #calculations
-- Show the employee's first_name and last_name, a "num_orders" column with a count of the orders taken, and a column called "Shipped" that displays "On Time" if the order shipped_date is less or equal to the required_date, "Late" if the order shipped late, "Not Shipped" if shipped_date is null.
-- Order by employee last_name, then by first_name, and then descending by number of orders.

CREATE TABLE orders (
  order_id INT PRIMARY KEY
  , FOREIGN KEY (customer_id TEXT) REFERENCES customers (customer_id)
  , FOREIGN KEY (employee_id INT) REFERENCES employees (empoyee_id)
  , order_date DATE
  , required_date DATE
  , shipped_date DATE
  , FOREIGN KEY (ship_via INT) REFERENCES shippers (shipper_id)
  , freight DECIMAL
  , ship_name TEXT
  , ship_address TEXT
  , ship_city TEXT
  , ship_region TEXT
  , ship_postal_code TEXT
  , ship_country TEXT
);

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
  , extension   TEXT  
  , FOREIGN KEY (reports_to) REFERENCES employees (employee_id)
);

SELECT  
  e.first_name AS first_name  
  , e.last_name AS last_name  
  , COUNT(o.order_id) AS num_orders  
  , CASE
      WHEN o.shipped_date <= o.required_date THEN 'On Time'  
      WHEN o.shipped_date > o.required_date THEN 'Late'  
      ELSE 'Not Shipped' END AS shipped
FROM employees AS e 
JOIN orders AS o ON e.employee_id = o.employee_id
GROUP BY 1,2,4
ORDER BY 2 ASC, 1 ASC, 3 DESC;
