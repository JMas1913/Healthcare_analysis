USE patient;
SELECT ROUND(time_in_hospital, 1) AS time_in_hospital,
COUNT(*) AS count,
RPAD('', COUNT(*)/100, '*') AS bar
FROM health
GROUP BY time_in_hospital
ORDER BY time_in_hospital;