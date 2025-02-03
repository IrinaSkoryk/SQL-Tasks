-- #Medium #JOIN
-- Show the ProductName, CompanyName, CategoryName from the products, suppliers, and categories table

CREATE TABLE categories (
  category_id INT PRIMARY KEY
  , category_name TEXT
  , description TEXT
);

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

CREATE TABLE suppliers (  
  shipper_id INT PRIMARY KEY  
  , company_name TEXT  
  , phone TEXT;

SELECT  
  p.product_name AS product_name  
  , s.company_name AS company_name  
  , c.category_name AS category_name
FROM products AS p  
JOIN suppliers AS s ON p.supplier_id = s.supplier_id
JOIN categories AS c ON p.category_id = c.category_id;
    
