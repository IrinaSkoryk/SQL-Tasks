-- #Medium #WHERE #OR #ORDERBY
-- Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. Show results ordered ascending by allergies then by first_name then by last_name.

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
  , allergies
FROM patients
WHERE allergies = 'Penicillin'
	OR allergies = 'Morphine'
ORDER BY 3,1,2;
