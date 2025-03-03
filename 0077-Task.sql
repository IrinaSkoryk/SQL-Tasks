/* #Hard #LEFT_JOIN #GROUP_BY #CONCAT #YEAR #Date #COUNT #aggregation #calculations
 TASK: We need a breakdown for the total amount of admissions each doctor has started each year. Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year. */

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
  d.doctor_id  
  , CONCAT (d.first_name, " ", d.last_name) AS doctor_name  
  , d.specialty  
  , YEAR(a.admission_date) AS selected_year  
  , COUNT (a.patient_id) AS total_admissions
FROM doctors AS d 
LEFT JOIN admissions AS a ON a.attending_doctor_id = d.doctor_id
GROUP BY 1,2,3,4;
