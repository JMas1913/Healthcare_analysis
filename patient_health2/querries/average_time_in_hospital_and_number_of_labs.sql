SELECT 
	ROUND(AVG(time_in_hospital),2) AS avg_time,
	CASE
		WHEN num_lab_procedures >= 0 AND num_lab_procedures < 25 THEN "few"
		WHEN num_lab_procedures >= 25 AND num_lab_procedures < 55 THEN "average"
		ELSE "many"
	END AS procedure_frequency
FROM 
	health
GROUP BY 
	procedure_frequency
ORDER BY 
	avg_time DESC;