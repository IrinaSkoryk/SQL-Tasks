-- #Medium #DAY #COUNT #GROUPBY #ORDERBY #aggregation #aggregate_function
-- Show all of the days of the month (1-31) and how many admission_dates occurred on that day. Sort by the day with most admissions to least admissions.

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
  DAY(admission_date) As day_number  
  , COUNT(patient_id) AS number_of_admission
FROM admissions
GROUP BY 1
ORDER BY 2 DESC;
