-- #Medium #AVG #ROUND #aggregation #aggregate_function #JOIN #calculations #GROUP_BY
-- Show the category_name and the average product unit price for each category rounded to 2 decimal places.

CREATE TABLE produsts (
  product_id INT PRIMARY KEY  
  , product_name TEXT  
  , FOREIGN KEY (supplier_id) REFERENCES suppliers (supplier_id)  
  , FOREIGN KEY (category_id) REFERENCES categories (category_id)   
  , quantity_per_unit TEXT  
  , unit_price DECIMAL
  , units_in_stock INT  
  , units_on_order INT  
  , reorder_level INT  
  , discontinued INT
);

CREATE TABLE categories (
  category_id INT PRIMARY KEY
  , category_name TEXT
  , description TEXT
);

SELECT  
  c.category_name AS category_name  
  , ROUND(AVG(p.unit_price),2) AS average_unit_price
FROM categories As c 
JOIN products AS p ON c.category_id = p.category_id
GROUP BY 1;
