CREATE DATABASE OLTP_DB;
USE OLTP_DB;


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    phone_no VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO Customers VALUES
(1,'Arun','9876543210','arun@gmail.com','Chennai'),
(2,'Meena','9123456780','meena@gmail.com','Bangalore'),
(3,'Karthik','9988776655','karthik@gmail.com','Hyderabad'),
(4,'Divya','9090909090','divya@gmail.com','Madurai'),
(5,'Suresh','8888888888','suresh@gmail.com','Salem'),
(6,'Priya','7777777777','priya@gmail.com','Trichy'),
(7,'Ravi','6666666666','ravi@gmail.com','Coimbatore'),
(8,'Anita','5555555555','anita@gmail.com','Erode'),
(9,'Naveen','4444444444','naveen@gmail.com','Vellore'),
(10,'Lakshmi','3333333333','lakshmi@gmail.com','Tirunelveli');


CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(30),
    balance DECIMAL(12,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Accounts VALUES
(101,1,'Savings',50000),
(102,2,'Savings',45000),
(103,3,'Current',60000),
(104,4,'Savings',30000),
(105,5,'Current',80000),
(106,6,'Savings',25000),
(107,7,'Savings',40000),
(108,8,'Current',90000),
(109,9,'Savings',35000),
(110,10,'Savings',42000);


CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(10,2),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

INSERT INTO Transactions VALUES
(1,101,'Deposit',10000,'2025-01-01'),
(2,102,'Withdrawal',5000,'2025-01-02'),
(3,103,'Deposit',15000,'2025-01-03'),
(4,104,'Withdrawal',3000,'2025-01-04'),
(5,105,'Deposit',20000,'2025-01-05'),
(6,106,'Withdrawal',4000,'2025-01-06'),
(7,107,'Deposit',8000,'2025-01-07'),
(8,108,'Withdrawal',10000,'2025-01-08'),
(9,109,'Deposit',7000,'2025-01-09'),
(10,110,'Withdrawal',6000,'2025-01-10');


CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    transaction_id INT,
    payment_mode VARCHAR(30),
    payment_status VARCHAR(20),
    FOREIGN KEY (transaction_id) REFERENCES Transactions(transaction_id)
);

INSERT INTO Payments VALUES
(1,1,'UPI','Success'),
(2,2,'Debit Card','Success'),
(3,3,'Net Banking','Success'),
(4,4,'UPI','Failed'),
(5,5,'Credit Card','Success'),
(6,6,'UPI','Success'),
(7,7,'Net Banking','Success'),
(8,8,'Debit Card','Success'),
(9,9,'UPI','Success'),
(10,10,'Credit Card','Success');