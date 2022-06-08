-- create a database named clinic
CREATE DATABASE clinic;

-- create a table named patients
CREATE TABLE patients(
    id INT GENERATED ALWAYS AS IDENTITY, 
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    PRIMARY KEY (id)
);

-- create a table named medical_histories
CREATE TABLE medical_histories(
    id INT GENERATED ALWAYS AS IDENTITY, 
    admitted_at TIMESTAMP,
    patients_id INT,
    status VARCHAR(50) NOT NULL,
    CONSTRAINT fk_patients
        FOREIGN KEY(patients_id)
        REFERENCES patients(id)
);

