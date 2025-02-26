-- #Medium #LIKE #WHERE #IN #LENGTH #CAST #OR_AND
/* Show patient_id, attending_doctor_id, and diagnosis for admissions that match one of the two criteria:
1. patient_id is an odd number and attending_doctor_id is either 1, 5, or 19.
2. attending_doctor_id contains a 2 and the length of patient_id is 3 characters. */


CREATE TABLE admissions 
  (  
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
    , attending_doctor_id
    , diagnosis
FROM admissions
WHERE 
  (
      patient_id % 2 != 0 AND attending_doctor_id IN (1,5,19)
  )
   OR 
  (
      attending_doctor_id LIKE '%2%' AND LENGTH(CAST(patient_id AS TEXT)) = 3 -- LENGTH is unusful for INT
  );
