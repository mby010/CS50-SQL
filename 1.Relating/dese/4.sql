SELECT "city" , COUNT("school") FROM "schools"
GROUP BY "city"
HAVING "type" = 'Public School'
ORDER BY COUNT("school") DESC, "city"
LIMIT 10;
