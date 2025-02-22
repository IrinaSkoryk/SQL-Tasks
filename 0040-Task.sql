-- #Medium #GROUPBY #COUNT #ORDERBY
-- Show the city and the total number of patients in the city. Order from most to least patients and then by city name ascending.

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

SELECT  
  city  
  , COUNT(patient_id) AS num_patients
FROM patients
GROUP BY 1
ORDER BY 2 DESC, 1 ASC;
