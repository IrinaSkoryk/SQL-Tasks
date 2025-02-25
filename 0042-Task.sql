-- #Medium #COUNT #WHERE #ISNOTNULL #GROUPBY #ORDERBY #HAVING
-- Show all allergies ordered by popularity. Remove NULL values from query.

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
  allergies  
  , COUNT(patient_id) AS total_diagnosis
FROM patients
WHERE allergies IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;

-- ANOTHER SOLUTION

SELECT  
  allergies  
  , COUNT(patient_id) AS total_diagnosis
FROM patients
GROUP BY 1
HAVING COUNT(patient_id) IS NOT NULL
ORDER BY 2 DESC;
