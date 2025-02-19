-- #Easy #JOIN 
-- Show first name, last name, and the full province name of each patient. Example: 'Ontario' instead of 'ON'

CREATE TABLE patients (  
  patient_id INT PRIMARY KEY
  first_name TEXT  
  last_name TEXT  
  gender CHAR
  birth_date   DATE  
  city   TEXT  
  FOREIGN KEY (province_id) REFERENCES province_names (province_id)
  allergies TEXT  
  height INT  
  weight INT
);

CREATE TABLE province_names (  
  province_id CHAR PRIMARY KEY
  province_name TEXT;

SELECT 
  p.first_name AS first_name  
  , p.last_name AS last_name  
  , pr.province_name AS province_name  
FROM patients AS p 
JOIN province_names AS pr ON p.province_id = pr.province_id;
