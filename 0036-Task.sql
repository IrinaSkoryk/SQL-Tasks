-- #Medium #ORDERBY #LEN
-- Display every patient's first_name. Order the list by the length of each name and then by alphabetically.


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
FROM patients
ORDER BY   
  LEN(first_name)  
  , first_name;
