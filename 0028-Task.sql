-- #Easy #COUNT #WHERE
-- Show the patient id and the total number of admissions for patient_id 579.

CREATE TABLE admissions (  
  FOREIGN KEY (patient_id) REFERENCES patients (patient_id)  
  admission_date DATE  
  discharge_date   DATE  
  diagnosis   TEXT
  FOREIGN KEY (attending_doctor_id) REFERENCES doctors (doctor_id)
);

SELECT  
  patient_id  
  ,COUNT(patient_id) AS total_admissions
FROM admissions
WHERE patient_id = 579;
