-- #Easy #NULL #WHERE
-- Show first name and last name of patients who does not have allergies. (null)

CREATE TABLE patients (  
  patient_id INT PRIMARY KEY
  first_name TEXT  
  last_name TEXT  
  gender CHAR
  birth_date 	DATE  
  city 	TEXT  
  FOREIGN KEY (province_id) REFERENCES province_names (province_id)
  allergies TEXT  
  height INT  
  weight INT
);

SELECT  
  first_name  
  , last_name
FROM patients
WHERE allergies is NULL;
