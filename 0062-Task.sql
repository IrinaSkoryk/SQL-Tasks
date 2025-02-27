-- #Medium #CONCAT #JOIN #Text_operations
-- For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.

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

CREATE TABLE doctors (  
  doctor_id INT PRIMARY KEY  
  , first_name TEXT
  , last_name TEXT  
  , specialty TEXT
);

SELECT  
  CONCAT (p.first_name, ' ', p.last_name) AS patient_name  
  , a.diagnosis AS diagnosis  
  , CONCAT (d.first_name, ' ', d.last_name) AS doctor_name
FROM admissions AS a 
JOIN patients AS p ON p.patient_id = a.patient_id
JOIN doctors AS d ON d.doctor_id = a.attending_doctor_id;
