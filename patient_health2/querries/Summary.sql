SELECT 
	CONCAT('Patient ', health.patient_nbr, ' was ', demographics.race, ' and ',
		   (CASE WHEN readmitted = 'NO' THEN ' was not readmitted. They had '
			ELSE ' was readmitted. They had '
			END),
	num_medications, 
    ' medications and ', 
    num_lab_procedures, 
    ' lab procedures.'
	) AS summary 
FROM 
	patient.health
INNER JOIN 
	patient.demographics 
    ON demographics.patient_nbr = health.patient_nbr
ORDER BY 
	num_medications DESC, num_lab_procedures DESC
LIMIT 
	50;