DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS users;


CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
pet_name VARCHAR(255),
phone VARCHAR(255)
);

CREATE TABLE animals (
id SERIAL PRIMARY KEY,
pet_name VARCHAR(255),
date_of_birth DATE,
specie VARCHAR(255),
treatment VARCHAR(255),
user_id INT NOT NULL REFERENCES users(id)
);