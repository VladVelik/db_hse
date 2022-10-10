CREATE TABLE "books" (
  "ISBN" varchar PRIMARY KEY,
  "year" int,
  "pages" int,
  "name" varchar,
  "author" varchar
);

CREATE TABLE "categories" (
  "name" varchar PRIMARY KEY,
  "parent_name" varchar
);

CREATE TABLE "publishers" (
  "address" varchar,
  "name" varchar PRIMARY KEY
);

CREATE TABLE "bookCopies" (
  "ISBN" int,
  "location" int,
  "number" varchar PRIMARY KEY
);

CREATE TABLE "reader" (
  "name" varchar,
  "surname" varchar,
  "address" varchar,
  "birthday" int,
  "number" varchar PRIMARY KEY
);

ALTER TABLE "categories" ADD FOREIGN KEY ("parent_name") REFERENCES "categories" ("name");

ALTER TABLE "bookCopies" ADD FOREIGN KEY ("number") REFERENCES "reader" ("number");

ALTER TABLE "bookCopies" ADD FOREIGN KEY ("number") REFERENCES "books" ("ISBN");

ALTER TABLE "books" ADD FOREIGN KEY ("ISBN") REFERENCES "publishers" ("name");