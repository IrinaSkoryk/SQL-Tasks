/* #Hard #CASE #POWER #calculations 
Show patient_id, weight, height, isObese from the patients table. Display isObese as a boolean 0 or 1.
Obese is defined as weight(kg)/(height(m)2) >= 30.
weight is in units kg.
height is in units cm. */

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
  patient_id  
  , weight  
  , height  
  , CASE  
      WHEN weight/(POWER(height/100.0,2)) >= 30 -- If we divide an int by an int we will get an int. Dividing an int by a float will return a float. That's why we have to divide by 100.0 and not 100.
      THEN 1 
      ELSE 0  
  END AS isObese
FROM patients;
