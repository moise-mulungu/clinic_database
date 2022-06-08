/*Queries that provide answers to the questions from all projects.*/

-- create a database named clinic
CREATE DATABASE clinic;

-- create a table named patients
CREATE TABLE patients(
    id INT GENERATED ALWAYS AS IDENTITY, 
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    PRIMARY KEY (id)
);
