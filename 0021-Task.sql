-- #Easy #CONCAT #Text_operations
-- Show first name and last name concatinated into one column to show their full name.

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

SELECT  
  CONCAT (first_name,' ', last_name) AS full_name
FROM patients;

--Another solution

SELECT  
  first_name || ' ' || last_name AS full_name
FROM patients;
