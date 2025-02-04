-- #Medium #Date #YEAR #MONTH #COUNT #GROUP_BY #aggregation #aggregate_function #calculations
-- Show the total amount of orders for each year/month.

CREATE TABLE orders (
  order_id INT PRIMARY KEY
  , FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
  , FOREIGN KEY (employee_id) REFERENCES employees (empoyee_id)
  , order_date DATE
  , required_date DATE
  , shipped_date DATE
  , FOREIGN KEY (ship_via) REFERENCES shippers (shipper_id)
  , freight DECIMAL
  , ship_name TEXT
  , ship_address TEXT
  , ship_city TEXT
  , ship_region TEXT
  , ship_postal_code TEXT
  , ship_country TEXT
);

SELECT  
  YEAR(order_date) AS order_year  
  , MONTH(order_date) AS order_month  
  , COUNT(order_id) AS total_orders
FROM orders
GROUP BY 1,2;
