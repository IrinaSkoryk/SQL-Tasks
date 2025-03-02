/* #Hard #CASE #WHEN #SUM #COUNT #GROUP_BY #WHERE #UNION #aggregation #calculations #aggregate_function #Even_Number #MOD

  TASK: Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.
        Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group. */

CREATE TABLE admissions (  
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
  CASE  
    WHEN patient_id % 2 = 0 THEN 'Yes'  
    ELSE 'No'  
  END AS has_insurance
  , SUM(  
      CASE  
        WHEN patient_id % 2 = 0 THEN 10  
        ELSE 50  
      END  
    ) AS cost_after_insurance
FROM admissions
GROUP BY 1;

--Another Solution

SELECT 
  'No' AS has_insurance
  , COUNT(patient_id) * 50 AS cost_after_insurance
FROM admissions 
WHERE patient_id % 2 <> 0 
GROUP BY has_insurance

UNION

SELECT 'Yes' AS has_insurance
  , COUNT(patient_id) * 10 AS cost_after_insurance
FROM admissions 
WHERE patient_id % 2 = 0 
GROUP BY has_insurance
