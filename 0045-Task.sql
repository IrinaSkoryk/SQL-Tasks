-- #Medium #SUM #GROUPBY #HAVING #Comparison
-- Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.

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
  province_id  
  , SUM(height) AS sum_height
FROM patients
GROUP BY province_id
HAVING sum_height >= 7000
