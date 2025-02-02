-- #Easy #Even_Number #MOD
-- Show all the even numbered Order_id from the orders table

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
  )
SELECT order_id
FROM orders
WHERE MOD(order_id,2) = 0;

--Another solution
SELECT order_id
FROM orders
WHERE order_id % 2 = 0;
