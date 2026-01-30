
CREATE DATABASE BloodBankDB;
USE BloodBankDB;


CREATE TABLE Donors (
    donor_id INT PRIMARY KEY,
    donor_name VARCHAR(100),
    blood_group VARCHAR(5),
    phone_no VARCHAR(15),
    city VARCHAR(50)
);

INSERT INTO Donors VALUES
(1,'Arun','A+','9876543210','Chennai'),
(2,'Meena','B+','9123456780','Bangalore'),
(3,'Karthik','O+','9988776655','Hyderabad'),
(4,'Divya','AB+','9090909090','Madurai'),
(5,'Suresh','A-','8888888888','Salem'),
(6,'Priya','B-','7777777777','Trichy'),
(7,'Ravi','O-','6666666666','Coimbatore'),
(8,'Anita','AB-','5555555555','Erode'),
(9,'Naveen','A+','4444444444','Vellore'),
(10,'Lakshmi','O+','3333333333','Tirunelveli');


CREATE TABLE Blood_Stock (
    stock_id INT PRIMARY KEY,
    blood_group VARCHAR(5),
    units_available INT,
    expiry_date DATE
);

INSERT INTO Blood_Stock VALUES
(1,'A+',25,'2025-02-15'),
(2,'B+',20,'2025-02-18'),
(3,'O+',30,'2025-02-20'),
(4,'AB+',10,'2025-02-22'),
(5,'A-',8,'2025-02-25'),
(6,'B-',6,'2025-02-27'),
(7,'O-',12,'2025-03-01'),
(8,'AB-',5,'2025-03-03'),
(9,'A+',18,'2025-03-05'),
(10,'O+',22,'2025-03-07');


CREATE TABLE Requests (
    request_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    donor_id INT,
    stock_id INT,
    units_required INT,
    request_date DATE,
    FOREIGN KEY (donor_id) REFERENCES Donors(donor_id),
    FOREIGN KEY (stock_id) REFERENCES Blood_Stock(stock_id)
);

INSERT INTO Requests VALUES
(1,'Ramesh',1,1,2,'2025-01-10'),
(2,'Geetha',3,3,3,'2025-01-11'),
(3,'Vijay',2,2,1,'2025-01-12'),
(4,'Anu',4,4,2,'2025-01-13'),
(5,'Mohan',5,5,1,'2025-01-14'),
(6,'Kavya',7,7,2,'2025-01-15'),
(7,'Deepak',6,6,1,'2025-01-16'),
(8,'Sandhya',8,8,1,'2025-01-17'),
(9,'Sathish',9,9,2,'2025-01-18'),
(10,'Revathi',10,10,1,'2025-01-19');