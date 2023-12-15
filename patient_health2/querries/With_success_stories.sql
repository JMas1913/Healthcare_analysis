WITH 
	avg_time AS (SELECT 
					AVG(time_in_hospital) 
				 FROM 
					health)
SELECT 
	* 
FROM 
	patient.health
WHERE 
	admission_type_id = 1
	AND time_in_hospital < (SELECT * FROM avg_time);