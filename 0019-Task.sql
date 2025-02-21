-- #Easy #BETWEEN #WHERE #Comparison
-- Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)

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
FROM patients
WHERE weight BETWEEN 100 AND 120;

Another solution

SELECT  
  first_name  
  , last_name
FROM patients
WHERE weight >=100  
    AND weight <=120;
