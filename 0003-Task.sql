-- #Easy #Date 
-- Show order_date, shipped_date, customer_id, freight of all orders placed on 2018 Feb 26

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

SELECT 
  order_date
  , shipped_date
  , customer_id
  , freight
 FROM orders
 WHERE order_date = '2018-02-26';

