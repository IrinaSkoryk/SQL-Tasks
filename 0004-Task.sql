-- #Easy #Comparison
-- Show the employee_id, order_id, customer_id, required_date, shipped_date from all orders shipped later than the required date

CREATE TABLE orders (
  order_id INT PRIMARY KEY
  , customer_id INT  
  , employee_id INT
  , order_date DATE
  , required_date DATE
  , shipped_date DATE
  , ship_via INT  
  , freight DECIMAL
  , ship_name TEXT
  , ship_address TEXT
  , ship_city TEXT
  , ship_region TEXT
  , ship_postal_code TEXT
  , ship_country TEXT
  , FOREIGN KEY (ship_via) REFERENCES shippers (shipper_id)  
  , FOREIGN KEY (customer_id) REFERENCES customers (customer_id)  
  , FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);

SELECT 
  employee_id
  , order_id
  , customer_id
  , required_date
  , shipped_date
FROM orders
WHERE shipped_date > required_date;

