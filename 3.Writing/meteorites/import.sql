CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "class" TEXT NOT NULL,
    "mass" NUMERIC,
    "discovery" TEXT CHECK("discovery" IN ('Fell', 'Found')),
    "year" INTEGER,
    "lat" Numeric,
    "long" Numeric,
    PRIMARY KEY("id")
);

CREATE TABLE "temp" (
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" NUMERIC,
    "long" NUMERIC
);
.import --csv --skip 1 meteorites.csv temp

UPDATE "temp" SET "mass" = NULL WHERE "mass" = '';
UPDATE "temp" SET "year" = NULL WHERE "year" = '';
UPDATE "temp" SET "lat" = NULL WHERE "lat" = '';
UPDATE "temp" SET "long" = NULL WHERE "long" = '';

UPDATE "temp" SET "mass" = ROUND("mass", 2);
UPDATE "temp" SET "lat" = ROUND("lat", 2);
UPDATE "temp" SET "long" = ROUND("long", 2);

DELETE FROM "temp" WHERE "nametype" = 'Relict';


INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "temp"
ORDER BY "year", "name";

DROP TABLE "temp";
