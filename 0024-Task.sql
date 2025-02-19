-- #Easy #MAX
--Show the first_name, last_name, and height of the patient with the greatest height.

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
  first_name  
  , last_name  
  , MAX(height) AS height
FROM patients;
