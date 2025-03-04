-- #Medium #LEFT_JOIN #WHERE #IS_NULL #NULL #NOT_IN
-- Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table. (Their patient_id does not exist in any admissions.patient_id rows.)

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

CREATE TABLE admissions (  
  admission_id PRIMARY KEY  
  , patient_id INT
  , admission_date DATE  
  , discharge_date DATE  
  , diagnosis TEXT  
  , attending_doctor_id INT  
  , FOREIGN KEY (patient_id) REFERENCES patients (patient_id)  
  , FOREIGN KEY (attending_doctor_id) REFERENCES doctors (doctor_id)  
);

SELECT  
  p.patient_id AS patient_id
  , p.first_name AS first_name
  , p.last_name AS last_name
FROM patients AS p
LEFT JOIN admissions AS a ON p.patient_id = a.patient_id
WHERE a.patient_id IS NULL

-- Another Solution

SELECT
  patient_id
  , first_name
  , last_name
FROM patients 
WHERE patient_id NOT IN 
  (
    SELECT patient_id
	  FROM admissions
  )










