SELECT "name" FROM "teams"
JOIN "performances" ON "performances"."team_id" = "teams"."id"
JOIN "players" ON "performances"."player_id" = "players"."id"
WHERE "players"."first_name" = 'Satchel' AND "players"."last_name" = 'Paige'
GROUP BY "teams"."name";
