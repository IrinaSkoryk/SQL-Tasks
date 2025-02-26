-- #Medium #JOIN #COUNT #GROUPBY #ORDERBY #calculations #aggregate_function #aggregation 
-- Display the total amount of patients for each province. Order by descending.

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

SELECT  
  pr.province_name AS province_name
  , COUNT(p.patient_id) AS patient_count
FROM province_names AS pr 
JOIN patients AS p ON pr.province_id = p.province_id
GROUP BY 1
ORDER BY 2 DESC;
