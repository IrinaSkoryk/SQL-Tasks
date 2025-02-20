-- #Easy #WHERE
-- Show all the columns from admissions where the patient was admitted and discharged on the same day.

CREATE TABLE admissions (  
  FOREIGN KEY (patient_id) REFERENCES patients (patient_id)  
  admission_date DATE  
  discharge_date   DATE  
  diagnosis   TEXT
  FOREIGN KEY (attending_doctor_id) REFERENCES doctors (doctor_id)
);

SELECT *
FROM admissions
WHERE admission_date = discharge_date;
