<<<<<<< HEAD
﻿-- Question 1
SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2
SELECT customerName, country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- Question 3
SELECT productCode, quantityOrdered,
       SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4
SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
=======
-- Week 1 Database Assignment
-- Hospital Management Database

CREATE DATABASE IF NOT EXISTS hospital_management;

USE hospital_management;

-- Patients table
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(20)
);

-- Doctors table
CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(20)
);

-- Appointments table
CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    reason VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

-- Sample patients
INSERT INTO patients (full_name, age, gender, phone)
VALUES
('Ahmed Hassan', 25, 'Male', '0712345678'),
('Amina Ali', 30, 'Female', '0723456789');

-- Sample doctors
INSERT INTO doctors (full_name, specialization, phone)
VALUES
('Dr. Mohamed Omar', 'General Medicine', '0734567890'),
('Dr. Fatima Hassan', 'Pediatrics', '0745678901');

-- Sample appointments
INSERT INTO appointments
(patient_id, doctor_id, appointment_date, reason)
VALUES
(1, 1, '2026-10-05', 'General checkup'),
(2, 2, '2026-10-06', 'Child health consultation');

-- Display the data
SELECT * FROM patients;
SELECT * FROM doctors;
SELECT * FROM appointments;
>>>>>>> c2391d08c8ae4a4212af6e65434a042a06d948da
