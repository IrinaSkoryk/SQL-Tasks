-- #Easy #Date #COUNT #calculation #BETWEEN #aggregation #aggregate_function #YEAR
-- Show how many patients have a birth_date with 2010 as the birth year.

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
  COUNT(*) AS total_patients
FROM patients
WHERE YEAR(birth_date) = 2010;

--Another Solution

SELECT  
  COUNT(first_name) AS total_patients
FROM patients
WHERE  
  birth_date >= '2010-01-01'  
  AND birth_date <= '2010-12-31';

--Another Solution

SELECT  
  COUNT(first_name) AS total_patients
FROM patients
WHERE  
  birth_date BETWEEN '2010-01-01' AND birth_date '2010-12-31';
