-- #Medium #JOIN #COUNT #GROUPBY #aggregation #calculations #aggregate_function
-- Show first_name, last_name, and the total number of admissions attended for each doctor. Every admission has been attended by a doctor.

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
  d.first_name AS first_name  
  , d.last_name AS last_name  
  , COUNT(a.patient_id) AS admissions_total
FROM doctors AS d 
JOIN admissions AS a ON a.attending_doctor_id = d.doctor_id
GROUP BY 1,2;
