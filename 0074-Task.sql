/* #Hard #COUNT #CAST #data_type #CONCAT #CTE #calculations #SUM #CASE 

  TASK: Show the percent of patients that have 'M' as their gender. Round the answer to the nearest hundreth number and in percent form. */

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

WITH cte AS 
  (
    SELECT   
      COUNT(patient_id) AS total_count  
      , SUM  
          (  
            CASE  
              WHEN gender = 'M' THEN 1 ELSE 0  
            END  
          ) AS total_gender_m
    FROM patients
  )
SELECT  
  CONCAT(ROUND(CAST(total_gender_m AS FLOAT) / total_count * 100, 2), '%') AS percent_of_male_patients
FROM cte;
