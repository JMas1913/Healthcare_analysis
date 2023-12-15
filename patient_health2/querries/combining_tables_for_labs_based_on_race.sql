SELECT 
	race, 
    AVG(num_lab_procedures) AS num_avg_lab_procedures 
FROM 
	health 
JOIN 
	demographics 
    on health.patient_nbr = demographics.patient_nbr
GROUP BY 
	race 
ORDER BY 
	num_avg_lab_procedures DESC;