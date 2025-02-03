-- #Easy #IS_NOT #NULL
-- Show the company_name, contact_name, fax number of all customers that has a fax number. (not null)

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
)

SELECT  
  company_name
  , contact_name
  , fax
FROM customers
WHERE fax IS NOT NULL;
