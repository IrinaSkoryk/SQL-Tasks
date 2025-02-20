-- #Easy #COUNT #calculations
-- Show the total number of admissions

CREATE TABLE admissions (  
  FOREIGN KEY (patient_id) REFERENCES patients (patient_id)  
  admission_date DATE  
  discharge_date 	DATE  
  diagnosis 	TEXT
  FOREIGN KEY (attending_doctor_id) REFERENCES doctors (doctor_id)
);

SELECT COUNT(*) AS total_adnissions
FROM admissions;
