-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS myemployeesDB;
-- Creates the "animals_db" database --
CREATE DATABASE myemployeesDB;

-- Makes it so all of the following code will affect animals_db --
USE myemployeesDB;

-- Creates the table "people" within animals_db --
CREATE TABLE department (
  -- Makes a string column called "name" which cannot contain null --
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30),
  PRIMARY KEY (id),
  
);

-- Creates new rows containing data in all named columns --
INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", TRUE, "Rockington", 100);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", TRUE, "Rockington", 100);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Jacob", TRUE, "Misty", 10);

INSERT INTO people (name, has_pet)
VALUES ("Peter", false);

-- Updates the row where the column name is peter --
UPDATE people
SET has_pet = true, pet_name = "Franklin", pet_age = 2
WHERE name = "Peter";
