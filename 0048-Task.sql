-- #Medium #WHERE #ORDERBY #HAVING #GROUPBY #MAX 
-- Show all columns for patient_id 542's most recent admission_date.

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

SELECT *
FROM admissions
WHERE patient_id = 542
ORDER BY admission_date DESC
LIMIT 1;

-- ANOTHER SOLUTION

SELECT *
FROM admissions
GROUP BY patient_id
HAVING
  patient_id = 542
  AND MAX(admission_date);

-- ANOTHER SOLUTION

SELECT *
FROM admissions
WHERE patient_id = 542
GROUP BY patient_id
HAVING
  admission_date = MAX(admission_date);

--ANOTHER SOLUTION 

SELECT *
FROM admissions
WHERE
  patient_id = '542'
  AND admission_date = (
    SELECT MAX(admission_date)
    FROM admissions
    WHERE patient_id = '542'
  );

