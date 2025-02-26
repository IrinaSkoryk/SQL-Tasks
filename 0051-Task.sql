-- #Medium #CONCAT #JOIN #MAX #MIN #Text_operations #GROUPBY 
-- For each doctor, display their id, full name, and the first and last admission date they attended.
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

CREATE TABLE doctors (  
  doctor_id INT PRIMARY KEY  
  , first_name TEXT  
  , last_name TEXT  
  , specialty TEXT
);


SELECT   
  d.doctor_id AS doctor_id  
  , CONCAT(d.first_name, ' ', d.last_name) As full_name  
  , MIN(a.admission_date) AS first_admission  
  , MAX(a.admission_date) AS last_admission
FROM doctors AS d 
JOIN admissions AS a ON a.attending_doctor_id = d.doctor_id
GROUP BY 1;
