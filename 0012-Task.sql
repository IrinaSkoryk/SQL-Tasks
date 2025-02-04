-- #Medium #UNION
-- Show the city, company_name, contact_name from the customers and suppliers table merged together. 
-- Create a column which contains 'customers' or 'suppliers' depending on the table it came from.

CREATE TABLE customers (
  customer_id TEXT PRIMARY KEY
  , company_name TEXT
  , contact_name TEXT
  , contact_title TEXT
  , address TEXT
  , city TEXT
  , region TEXT
  , postal_code TEXT
  , country TEXT
  , phone TEXT
  , fax TEXT
);

CREATE TABLE suppliers (  
  supplier_id INT PRIMARY KEY  
  , company_name TEXT  
  , contact_name TEXT  
  , contact_title TEXT  
  , address TEXT  
  , city TEXT  
  , region TEXT  
  , postal_code TEXT  
  , country TEXT  
  , phone TEXT  
  , fax TEXT  
  , home_page TEXT
);

SELECT  
  city  
  , company_name  
  , contact_name  
  , 'customers' AS relationship
FROM customers AS c 
UNION
SELECT  
  city  
  , company_name  
  , contact_name  
  , 'suppliers' AS relationship
FROM suppliers AS s;
