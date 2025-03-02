/* #Hard #JOIN #DISTINCT #CONCAT #LEN #YEAR
  TASK: All patients who have gone through admissions, can see their medical documents on our site. Those patients are given a temporary password after their first admission. Show the patient_id and temp_password.
      The password must be the following, in order:
          1. patient_id
          2. the numerical length of patient's last_name
          3. year of patient's birth_date */

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
  DISTINCT(a.patient_id)  
  , CONCAT(a.patient_id, LEN(p.last_name), YEAR(p.birth_date)) AS temp_password
FROM admissions AS a 
JOIN patients AS p ON p.patient_id = a.patient_id;
