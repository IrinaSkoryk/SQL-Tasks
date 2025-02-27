-- #Medium #calculations #CASE #CONCAT #ROUND 
 /* Display patient's full name,
height in the units feet rounded to 1 decimal,
weight in the unit pounds rounded to 0 decimals,
birth_date,
gender non abbreviated.

Convert CM to feet by dividing by 30.48.
Convert KG to pounds by multiplying by 2.205. */

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
  CONCAT(first_name, ' ', last_name) AS patient_name  
  , ROUND(height / 30.48,1) AS height  
  , ROUND(weight * 2.205,0) AS weight  
  , birth_date  
  , CASE  
      WHEN gender = 'F' THEN 'FEMALE'  
      WHEN gender = 'M' THEN 'MALE'
    END AS gender_type
FROM patients;
