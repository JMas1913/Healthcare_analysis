SELECT 
	patient_nbr 
FROM 
	patient.demographics 
WHERE 
	race = 'AfricanAmerican'
UNION
SELECT 
	patient_nbr 
FROM 
	patient.health 
WHERE 
	metformin = 'Up';