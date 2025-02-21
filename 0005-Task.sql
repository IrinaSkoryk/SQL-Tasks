-- #Easy #Even_Number #MOD
-- Show all the even numbered Order_id from the orders table

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

SELECT order_id
FROM orders
WHERE MOD(order_id,2) = 0;

--Another solution
SELECT order_id
FROM orders
WHERE order_id % 2 = 0;
