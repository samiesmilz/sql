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
  author_id INTEGER REFERENCES authors ON DELETE CASCADE,
  title TEXT,
  pages INTEGER,
  year INT
);

INSERT INTO authors (first_name, last_name, username, password) VALUES
('Samie', 'Smilz', 'samiesmilz', '1234'),
('Jack', 'Shoe', 'jackshoe', '1234'),
('Molly', 'Maco', 'mollymaco', '1234');

INSERT INTO readers (first_name, last_name, username) VALUES
('Mac', 'Moir', 'macmoir'),
('Hanna', 'Grace', 'hannagrace'),
('Micky', 'Mike', 'mickymike');

INSERT INTO books (author_id, title, pages, year) VALUES
(1, 'Landing The Cowboy', 136, 2020),
(3, 'New Heavens', 245, 1989),
(2, 'The Rabbit Hole', 76, 2023);