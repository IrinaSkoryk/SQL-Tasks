-- #Medium #WHERE #LIKE #text #text_operations
-- Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.

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
  patient_id  
  , first_name
FROM patients
WHERE first_name LIKE 'S____%s';
