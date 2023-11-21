-- Database for Authors and Readers --
-- psql < eboore.sql
-- psql eboore

DROP DATABASE IF EXISTS eboore;
CREATE DATABASE eboore;

\c eboore;

CREATE TABLE authors(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  username VARCHAR(15) UNIQUE NOT NULL,
  password VARCHAR(18) NOT NULL
);

CREATE TABLE readers(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  username VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  title TEXT,
  pages INTEGER,
  year INT
);

INSERT INTO authors (first_name, last_name, username, password) VALUES
(Samie, Smilz, samiesmilz, 1234),
(Jack, Shoe, jackshoe, 1234),
(Molly, Maco, mollymaco, 1234)