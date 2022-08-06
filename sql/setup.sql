-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE if exists movies;
DROP TABLE if exists cities;
DROP TABLE IF exists societies;
DROP TABLE IF exists classes;
CREATE TABLE movies (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR NOT NULL,
    director VARCHAR NOT NULL,
    genre VARCHAR NOT NULL
);

INSERT INTO movies (name, director, genre) VALUES
('Blade Runner', 'Ridley Scott', 'Science Fiction'),
('Fight Club', 'David Fincher', 'psychological action drama'),
('Remember the Titans', 'Boaz Yakin', 'Sports');

CREATE TABLE cities (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR NOT NULL,
    population INT NOT NULL,
    motto VARCHAR NOT NULL
);

INSERT INTO cities (name, population, motto) VALUES
('Portland', 650380, 'keep portland weird'),
('New York', 8000000, 'excelsior'),
('Seattle', 741251, 'city of goodwill');

CREATE TABLE societies (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR NOT NULL,
  year VARCHAR NOT NULL,
  continent VARCHAR NOT NULL
);
INSERT INTO societies (
  name,
  year,
  continent
)
VALUES
('Sumer', '4500 bce', 'Asia'),
('Babylon', '2300 bce', 'Asia'),
('Egypt', '3100 bce', 'Africa'),
('Greece', '1600 bce', 'Europe'),
('Rome', '753 bce', 'Europe');

CREATE TABLE classes (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR NOT NULL,
  type VARCHAR NOT NULL
);
INSERT INTO classes (
  name,
  type
)
VALUES
('Warrior', 'Tank'),
('Paladin', 'Tank'),
('Dark Knight', 'Tank'),
('Gunbreaker', 'Tank'),
('White Mage', 'Healer'),
('Astrologian', 'Healer'),
('Sage', 'Healer'),
('Scholar', 'Healer'),
('Red Mage', 'DPS'),
('Black Mage', 'DPS'),
('Bard', 'DPS'),
('Monk', 'DPS'),
('Ninja', 'DPS'),
('Dragon', 'DPS'),
('Lancer', 'DPS'),
('Reaper', 'DPS'),
('Samurai', 'DPS');