-- #Hard #SUM #Total #JOIN #GROUP_BY #ORDER_BY #YEAR #Date #aggregation #aggregate_function #calculations #ROUND
-- Show how much money the company lost due to giving discounts each year, order the years from most recent to least recent. Round to 2 decimal places

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

CREATE TABLE produsts (
  product_id INT PRIMARY KEY  
  , product_name TEXT  
  , supplier_id INT
  , category_id INT 
  , quantity_per_unit TEXT  
  , unit_price DECIMAL
  , units_in_stock INT  
  , units_on_order INT  
  , reorder_level INT  
  , discontinued INT
  , FOREIGN KEY (supplier_id) REFERENCES suppliers (supplier_id)  
  , FOREIGN KEY (category_id) REFERENCES categories (category_id)  
);

CREATE TABLE order_details (  
  order_id INT
  , product_id INT
  , quantity INT  
  , discount DECIMAL
  , FOREIGN KEY (order_id) REFERENCES orders (order_id)
  , FOREIGN KEY (product_id) REFERENCES products (product_id)
);

SELECT  
  YEAR(o.order_date) AS order_year  
  , ROUND(SUM(p.unit_price * od.quantity * od.discount),2) AS discount_amount
FROM orders AS o 
JOIN order_details AS od ON od.order_id = o.order_id
JOIN products AS p ON p.product_id = od.product_id
GROUP BY 1
ORDER BY 1 DESC;
