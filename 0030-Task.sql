-- #Easy #Comparison #WHERE
-- Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70

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
  , birth_date
FROM patients
WHERE height > 160  
  AND weight > 70;
