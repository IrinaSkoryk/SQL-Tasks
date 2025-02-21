-- #Easy #WHERE #LIKE #Text #text_operations
-- Show first name of patients that start with the letter 'C'

CREATE TABLE patients (  
  patient_id INT PRIMARY KEY
  , first_name TEXT  
  , last_name TEXT  
  , gender CHAR
  , birth_date DATE  
  , city TEXT  
  , province_id INT
  , allergies TEXT  
  , height INT  
  , weight INT  
  , FOREIGN KEY (province_id) REFERENCES province_names (province_id)
);

SELECT  
  first_name
FROM patients
WHERE first_name LIKE 'C%';

