-- #Easy #Sort #WHERE
-- Show first name, last name, and gender of patients whose gender is 'M'

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
  , last_name  
  , gender
FROM patients
WHERE gender is 'M';
