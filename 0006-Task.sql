-- #Easy #LIKE
-- Show the city, company_name, contact_name of all customers from cities which contains the letter 'L' in the city name, sorted by contact_name

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
  city
  , company_name
  , contact_name
FROM customers
WHERE city LIKE '%L%'
ORDER BY 3;
