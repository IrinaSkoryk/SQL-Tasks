-- #Medium #GROUPBY #HAVING #COUNT
-- Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.

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
  patient_id  
  , diagnosis
FROM admissions
GROUP BY patient_id, diagnosis
HAVING COUNT(patient_id) > 1;
