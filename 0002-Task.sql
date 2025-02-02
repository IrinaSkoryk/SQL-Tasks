-- #Easy #Exception #NOT_IN
-- Show all the contact_name, address, city of all customers which are not from 'Germany', 'Mexico', 'Spain'

CREATE TABLE castomers (
  castomer_id INT PRIMARY KEY
  , customer_id TEXT
  , company_name TEXT
  , contact_name TEXT
  , contact_title TEXT
  , address TEXT
  , city TEXT
  , region TEXT
  , postal_code TEXT
  , country TEXT
  , phone TEXT
  , fax TEXT)

SELECT 
  contact_name
  , address
  , city
FROM customers
WHERE country NOT IN ('Germany', 'Mexico', 'Spain');
