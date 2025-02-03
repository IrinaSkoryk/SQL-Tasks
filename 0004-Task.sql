-- #Easy #Comparison
-- Show the employee_id, order_id, customer_id, required_date, shipped_date from all orders shipped later than the required date

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

SELECT 
  employee_id
  , order_id
  , customer_id
  , required_date
  , shipped_date
FROM orders
WHERE shipped_date > required_date;

