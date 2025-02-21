-- #Easy #WHERE #IN
-- Show all columns for patients who have one of the following patient_ids: 1,45,534,879,1000

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

SELECT *
FROM patients
WHERE patient_id IN (1, 45, 534, 879, 1000);
