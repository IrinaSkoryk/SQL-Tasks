-- #Medium
-- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'. 
-- Primary diagnosis is stored in the admissions table.

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
  p.patient_id  
  , p.first_name  
  , p.last_name
FROM patients AS p
JOIN admissions AS a ON p.patient_id = a.patient_id
WHERE a.diagnosis = 'Dementia';
