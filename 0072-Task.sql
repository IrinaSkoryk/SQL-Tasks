/* #Hard #CTE #SUM #CASE #JOIN #GROUP_BY #WHERE #aggregate_functions #aggregations #calculations #Comparison 

  TASK: Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name */

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

CREATE TABLE province_names (
  province_id INT PRIMARY KEY
  , province_name
);

WITH cte AS 
(  
  SELECT  
    pr.province_name AS province_name  
    , SUM(CASE WHEN p.gender = 'M' THEN 1 ELSE 0 END) AS count_gender_M  
    , SUM(CASE WHEN p.gender = 'F' THEN 1 ELSE 0 END) AS count_gender_F
  FROM province_names AS pr 
  JOIN patients AS p ON pr.province_id = p.province_id
  GROUP BY 1
)
SELECT province_name
FROM cte
WHERE count_gender_M > count_gender_F;
