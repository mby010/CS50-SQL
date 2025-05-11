CREATE TABLE "ingredients"(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "price_per_unit" NUMERIC NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts"(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "gluten_free" TEXT NOT NULL CHECK("gluten_free" IN ('yes', 'no')),
    "price_per_donut" NUMERIC NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "orders"(
    "id" INTEGER,
    "donut_id" INTEGER,
    "costumer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("costumer_id") REFERENCES "costumers"("id")
);

CREATE TABLE "costumers"(
    "id" INTEGER,
    "full_name" TEXT NOT NULL,
    "order_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);
