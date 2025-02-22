-- #Medium #DISTINCT #YEAR #Date #ORDERBY
-- Show unique birth years from patients and order them by ascending.

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

SELECT DISTINCT YEAR(birth_date) AS birth_year
FROM patients
ORDER BY 1 ASC;
