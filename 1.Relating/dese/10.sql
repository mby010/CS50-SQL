SELECT "name", "per_pupil_expenditure" FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
WHERE "districts"."type" LIKE '%Public School%'
ORDER BY "expenditures"."per_pupil_expenditure" DESC
LIMIT 10;
