CREATE VIEW "june_vacancies" AS
SELECT "listings"."id" AS "id","property_type", "host_name", COUNT("date") AS "days_vacant" FROM "listings"
JOIN "availabilities" ON "availabilities"."listing_id" = "listings"."id"
GROUP BY "listing_id"
HAVING "available" = 'TRUE' AND "date" LIKE '2023-06-%';
