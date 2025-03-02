/* #Hard #WHERE #JOIN #AND
TASK: Show patient_id, first_name, last_name, and attending doctor's specialty.
      Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'
      Check patients, admissions, and doctors tables for required information. */

CREATE TABLE doctors (  
  doctor_id INT PRIMARY KEY  
  , first_name TEXT
  , last_name TEXT  
  , specialty TEXT
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
  p.patient_id AS patient_id  
  , p.first_name AS patient_first_name  
  , p.last_name AS patient_last_name  
  , d.specialty AS doctor_speciality
FROM patients AS p 
JOIN admissions As a ON p.patient_id = a.patient_id
JOIN doctors AS d ON d.doctor_id = a.attending_doctor_id
WHERE a.diagnosis = 'Epilepsy'  
  AND d.first_name = 'Lisa';
