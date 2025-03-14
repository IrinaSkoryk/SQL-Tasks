-- #Easy #WHERE #DISTINCT
-- Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.

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
  DISTINCT(city) AS unique_cities
FROM patients
WHERE province_id = 'NS';
