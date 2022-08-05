-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE if exists movies;
DROP TABLE if exists cities;
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

