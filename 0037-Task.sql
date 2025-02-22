-- #Medium #COUNT #WHERE #FILTER #CASE
-- Show the total amount of male patients and the total amount of female patients in the patients table. 
-- Display the two results in the same row.

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
    COUNT(
        CASE 
            WHEN gender = 'M' THEN 1 
        END
    ) AS male_count
    , COUNT(
        CASE 
            WHEN gender = 'F' THEN 1 
        END
    ) AS female_count
FROM patients;

--Another Solution

SELECT 
  (
  SELECT 
    COUNT(*) FROM patients WHERE gender = 'M'
  ) AS male_count 
  , (
  SELECT 
    COUNT(*) FROM patients WHERE gender = 'F'
  ) AS female_count;

-- Another Solution

SELECT 
    COUNT(*) FILTER (WHERE gender = 'M') AS male_count
    , COUNT(*) FILTER (WHERE gender = 'F') AS female_count
FROM patients;
