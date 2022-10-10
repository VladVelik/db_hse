CREATE TABLE "stations1" (
  "id" varchar PRIMARY KEY,
  "tracks" varchar
);

CREATE TABLE "trains" (
  "train_id" varchar PRIMARY KEY,
  "region" varchar,
  "city" varchar,
  "length" int
);

CREATE TABLE "city" (
  "name" varchar UNIQUE NOT NULL,
  "region" varchar UNIQUE NOT NULL,
  PRIMARY KEY (name, region)
);

CREATE TABLE "timeTable" (
  "time" timestamp,
  "city" varchar,
  "region" varchar,
  "name" varchar,
  "train_id" int
);

ALTER TABLE "stations1" ADD FOREIGN KEY ("id") REFERENCES "city" ("name");

ALTER TABLE "trains" ADD FOREIGN KEY ("train_id") REFERENCES "stations1" ("id");
