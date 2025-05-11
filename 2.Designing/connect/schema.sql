CREATE TABLE "users"(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL UNIQUE,
    PRIMARY KEY("id")
);

CREATE TABLE "educations"(
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "year" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "companies"(
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "connection_people"(
    "id" INTEGER,
    "A_id" INTEGER,
    "B_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("A_id") REFERENCES "users"("id"),
    FOREIGN KEY("B_id") REFERENCES "users"("id")
);

CREATE TABLE "connections_schools"(
    "id" INTEGER,
    "user_id" INTEGER,
    "education_id" INTEGER,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("education_id") REFERENCES "educations"("id")
);

CREATE TABLE "connections_companies"(
    "id" INTEGER,
    "user_id" INTEGER,
    "company_id" INTEGER,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);
