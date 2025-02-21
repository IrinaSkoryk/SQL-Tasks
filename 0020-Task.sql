-- #Easy #UPDATE #SET #WHERE #NULL
-- Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'

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

UPDATE patients
SET allergies = 'NKA'
WHERE allergies IS NULL;
