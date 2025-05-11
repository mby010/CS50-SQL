SELECT "year", ROUND(AVG("salary"),2) As "average salary" FROM "salaries"
GROUP BY "year"
ORDER BY "year" DESC;
