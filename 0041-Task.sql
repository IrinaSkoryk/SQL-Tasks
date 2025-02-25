-- #Medium #UNIONALL #ALL #UNION
-- Show first name, last name and role of every person that is either patient or doctor. The roles are either "Patient" or "Doctor"

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

CREATE TABLE doctors (  
  doctor_id INT PRIMARY KEY  
  , first_name TEXT  
  , last_name TEXT  
  , specialty TEXT
);

SELECT  
  first_name  
  , last_name  
  , 'Patient' AS role
FROM patients

UNION ALL

SELECT  
  first_name  
  , last_name  
  , 'Doctor' AS role
FROM doctors;
