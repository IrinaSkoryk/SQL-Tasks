-- #Easy #Date 
-- Show order_date, shipped_date, customer_id, freight of all orders placed on 2018 Feb 26

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
  order_date
  , shipped_date
  , customer_id
  , freight
 FROM orders
 WHERE order_date = '2018-02-26';

