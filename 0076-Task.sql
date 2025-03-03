/* #Hard #ORDER_BY #CASE #WF #Window_function #RANK
  TASK: Sort the province names in ascending order in such a way that the province 'Ontario' is always on top. */

CREATE TABLE province_names (  
  province_id INT PRIMARY KEY
  , province_name TEXT
);

WITH cte AS 
(
  SELECT  
    province_name  
    , CASE  
        WHEN province_name = 'Ontario' THEN 0 
        ELSE RANK () OVER (ORDER BY province_name ASC)  
    END AS rank_number
  FROM province_names
)
SELECT  
  province_name
FROM cte
ORDER BY rank_number ASC;

