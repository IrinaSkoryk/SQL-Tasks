-- #Medium #COUNT #GROUPBY #HAVING #aggregation #aggregate_functions #calculations #duplicates
/* display the first name, last name and number of duplicate patients based on their first name and last name. 
Ex: A patient with an identical name can be considered a duplicate. */

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
  first_name  
  , last_name  
  , COUNT(patient_id) AS num_of_duplicates
FROM patients
GROUP BY 1,2
HAVING COUNT(patient_id) > 1;
