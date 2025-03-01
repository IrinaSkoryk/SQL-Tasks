-- #Hard #COUNT #FLOOR #GROUP_BY #OEDER_BY #calculations #aggregation #aggregate_function
/* Show all of the patients grouped into weight groups.
Show the total amount of patients in each weight group.
Order the list by the weight group decending.
For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc. */

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
  COUNT(patient_id) AS patients_in_group
  , FLOOR(weight/10) * 10 AS weight_group   /* for exapmle: 73/10 = 7.3 → 7; 7*10 = 70 */
FROM patients
GROUP BY 2
ORDER BY 2 DESC;
