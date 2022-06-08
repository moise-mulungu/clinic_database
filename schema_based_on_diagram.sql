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
    patient_id INT,
    status VARCHAR(50) NOT NULL,
    CONSTRAINT fk_patient
        FOREIGN KEY(patient_id)
        REFERENCES patients(id)
);

-- Create a table named invoices
CREATE TABLE invoices(
    id INT GENERATED ALWAYS AS IDENTITY, 
    total_amount DECIMAL,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id INT,
    CONSTRAINT fk_medical_history
        FOREIGN KEY (medical_history_id)
        REFERENCES medical_histories (id)
);

-- Create a table named treatments
CREATE TABLE treatments(
    id INT GENERATED ALWAYS AS IDENTITY, 
    type VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- create a table named invoice_items
CREATE TABLE invoice_items(
id INT GENERATED ALWAYS AS IDENTITY, 
unit_price DECIMAL NOT NULL,
quantity INT NOT NULL,
total_price DECIMAL,
invoice_id INT NOT NULL,
treatment_id INT NOT NULL,
CONSTRAINT fk_invoice_id
        FOREIGN KEY (invoice_id)
        REFERENCES invoices (id),
    CONSTRAINT fk_treatment_id
        FOREIGN KEY (treatment_id)
        REFERENCES treatments (id)
);