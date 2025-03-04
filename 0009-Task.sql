-- #Easy #AVG #SUM #Total #ROUND #aggregation #aggregate_function #calculations
-- Show the average unit price rounded to 2 decimal places, the total units in stock, total discontinued products from the products table.

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

SELECT  
  ROUND(AVG(unit_price),2) AS average_price  
  , SUM(units_in_stock) AS total_stock  
  , SUM(discontinued) AS total_discontinued
FROM products;
