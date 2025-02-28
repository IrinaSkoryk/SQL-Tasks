-- #Medium #COUNT #CTE #MAX #MIN #ROUND #AVG #aggregate_function #calculations #aggregation
-- Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and average number of admissions per day is calculated. Average is rounded to 2 decimal places.

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

WITH cte AS 
(
  SELECT  
     admission_date   
     , COUNT(admission_date) AS total_admission
  FROM admissions 
  GROUP BY admission_date
)
SELECT  
  MAX(total_admission) AS max_visits  
  , MIN(total_admission) AS min_visits  
  , ROUND(AVG(total_admission),2) AS average_visists
FROM cte;
