
CREATE DATABASE TrafficDB;
USE TrafficDB;


CREATE TABLE Vehicles (
    vehicle_id INT PRIMARY KEY,
    vehicle_number VARCHAR(20),
    vehicle_type VARCHAR(30),
    owner_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO Vehicles VALUES
(1,'TN01AB1234','Car','Arun','Chennai'),
(2,'KA02CD2345','Bike','Meena','Bangalore'),
(3,'TS03EF3456','Truck','Karthik','Hyderabad'),
(4,'TN04GH4567','Bus','Divya','Madurai'),
(5,'TN05IJ5678','Car','Suresh','Salem'),
(6,'TN06KL6789','Bike','Priya','Trichy'),
(7,'TN07MN7890','Car','Ravi','Coimbatore'),
(8,'TN08OP8901','Bus','Anita','Erode'),
(9,'TN09QR9012','Truck','Naveen','Vellore'),
(10,'TN10ST0123','Bike','Lakshmi','Tirunelveli');

CREATE TABLE Traffic_Signals (
    signal_id INT PRIMARY KEY,
    location VARCHAR(100),
    signal_status VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO Traffic_Signals VALUES
(1,'Anna Nagar','Green','Chennai'),
(2,'MG Road','Red','Bangalore'),
(3,'Charminar','Yellow','Hyderabad'),
(4,'Meenakshi Temple','Green','Madurai'),
(5,'Five Roads','Red','Salem'),
(6,'Central Bus Stand','Green','Trichy'),
(7,'Gandhipuram','Yellow','Coimbatore'),
(8,'Perundurai Road','Red','Erode'),
(9,'Katpadi','Green','Vellore'),
(10,'Palayamkottai','Yellow','Tirunelveli');


CREATE TABLE Violations (
    violation_id INT PRIMARY KEY,
    vehicle_id INT,
    signal_id INT,
    violation_type VARCHAR(50),
    fine_amount DECIMAL(10,2),
    violation_date DATE,
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id),
    FOREIGN KEY (signal_id) REFERENCES Traffic_Signals(signal_id)
);

INSERT INTO Violations VALUES
(1,1,1,'Signal Jump',1000,'2025-01-01'),
(2,2,2,'No Helmet',500,'2025-01-02'),
(3,3,3,'Over Speed',2000,'2025-01-03'),
(4,4,4,'Signal Jump',1500,'2025-01-04'),
(5,5,5,'Wrong Parking',800,'2025-01-05'),
(6,6,6,'No Helmet',500,'2025-01-06'),
(7,7,7,'Over Speed',1200,'2025-01-07'),
(8,8,8,'Signal Jump',1500,'2025-01-08'),
(9,9,9,'Wrong Parking',700,'2025-01-09'),
(10,10,10,'No Helmet',500,'2025-01-10');


CREATE TABLE Fines (
    fine_id INT PRIMARY KEY,
    violation_id INT,
    payment_status VARCHAR(20),
    payment_date DATE,
    FOREIGN KEY (violation_id) REFERENCES Violations(violation_id)
);

INSERT INTO Fines VALUES
(1,1,'Paid','2025-01-02'),
(2,2,'Paid','2025-01-03'),
(3,3,'Unpaid',NULL),
(4,4,'Paid','2025-01-05'),
(5,5,'Paid','2025-01-06'),
(6,6,'Unpaid',NULL),
(7,7,'Paid','2025-01-08'),
(8,8,'Unpaid',NULL),
(9,9,'Paid','2025-01-10'),
(10,10,'Paid','2025-01-11');