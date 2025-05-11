SELECT "city" , COUNT("school") FROM "schools"
GROUP BY "city"
HAVING "type" = 'Public School' AND COUNT("school") <=3
ORDER BY COUNT("school") DESC, "city";
