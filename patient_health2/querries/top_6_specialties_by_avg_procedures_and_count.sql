SELECT 
	medical_specialty, 
    ROUND(AVG(num_procedures),2) AS avg_procedures,
    COUNT(*) AS count
FROM 
	health 
GROUP BY 
	medical_specialty
HAVING
	count > 50
    AND avg_procedures > 2.50
ORDER BY 
	avg_procedures DESC;