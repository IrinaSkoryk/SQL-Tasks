-- #Easy #Sort #ORDER_BY
-- Show the category_name and description from the categories table sorted by category_name.

CREATE TABLE categories (
  category_id INT PRIMARY KEY
  , category_name TEXT
  , description TEXT  
  );

SELECT 
  category_name
  , description
FROM categories
ORDER BY 1;
