CREATE TABLE "patients" (
  "number" int PRIMARY KEY,
  "name" varchar,
  "disease" varchar,
  "station" int,
  "roomNr" int,
  "doc_ID" int
);

CREATE TABLE "rooms" (
  "num" int,
  "beds" int,
  "station" int,
  PRIMARY KEY ("num", "station")
);

CREATE TABLE "stations" (
  "stat_ID" int PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "caregivers" (
  "name" int,
  "qualification" varchar
);

CREATE TABLE "doctors" (
  "num" int PRIMARY KEY,
  "rank" varchar
);

CREATE TABLE "personnel" (
  "pers_num" int PRIMARY KEY,
  "stationNr" int,
  "name" varchar
);

ALTER TABLE "patients" ADD FOREIGN KEY ("doc_ID") REFERENCES "doctors" ("num");

ALTER TABLE "patients" ADD FOREIGN KEY ("station", "roomNr") REFERENCES "rooms" ("station", num);

ALTER TABLE "rooms" ADD FOREIGN KEY ("station") REFERENCES "stations" ("stat_ID");

ALTER TABLE "caregivers" ADD FOREIGN KEY ("name") REFERENCES "personnel" ("pers_num");

ALTER TABLE "doctors" ADD FOREIGN KEY ("num") REFERENCES "personnel" ("pers_num");

ALTER TABLE "personnel" ADD FOREIGN KEY ("stationNr") REFERENCES "stations" ("stat_ID");
