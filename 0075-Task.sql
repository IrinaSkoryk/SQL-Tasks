/* #Hard #COUNT #LAG #ORDER_BY #WF #Window_Function #GROUP_BY #CTE #calculations #aggregation #aggregate_function
For each day display the total amount of admissions on that day. Display the amount changed from the previous date. */

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
    , COUNT(patient_id) AS admission_day  
    , LAG(COUNT(patient_id)) OVER (ORDER BY admission_date) AS previous_admission_day
FROM admissions
GROUP BY 1
)

SELECT   
  admission_date  
  , admission_day  
  , admission_day - previous_admission_day AS admission_count_change 
FROM cte;
