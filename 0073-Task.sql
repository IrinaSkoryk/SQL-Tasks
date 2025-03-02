/* #Hard #Date #IN #WHERE #LIKE #pattern_matching #BETWEEN #MONTH #Odd_number
  
  TASK: We are looking for a specific patient. Pull all columns for the patient who matches the following criteria:
          - First_name contains an 'r' after the first two letters.
          - Identifies their gender as 'F'
          - Born in February, May, or December
          - Their weight would be between 60kg and 80kg
          - Their patient_id is an odd number
          - They are from the city 'Kingston' */

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

SELECT *
FROM patients
WHERE  
  first_name LIKE '__r%'  
  AND gender = 'F'  
  AND MONTH(birth_date) IN (02,05,12)  
  AND weight BETWEEN 60 AND 80  
  AND patient_id % 2 <> 0  
  AND city = 'Kingston';
