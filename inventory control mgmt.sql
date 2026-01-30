
CREATE DATABASE InventoryDB;
USE InventoryDB;


CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    phone_no VARCHAR(15),
    city VARCHAR(50)
);

INSERT INTO Suppliers VALUES
(1,'ABC Traders','9876543210','Chennai'),
(2,'Global Supplies','9123456780','Bangalore'),
(3,'Metro Distributors','9988776655','Hyderabad'),
(4,'Sun Enterprises','9090909090','Coimbatore'),
(5,'Prime Vendors','8888888888','Madurai'),
(6,'Fast Supply','7777777777','Trichy'),
(7,'Star Suppliers','6666666666','Salem'),
(8,'Green Trade','5555555555','Erode'),
(9,'National Wholesale','4444444444','Vellore'),
(10,'Elite Distributors','3333333333','Tirunelveli');

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10,2),
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

INSERT INTO Products VALUES
(1,'Keyboard','Electronics',700,1),
(2,'Mouse','Electronics',400,2),
(3,'Monitor','Electronics',12000,3),
(4,'Printer','Electronics',9000,4),
(5,'Laptop','Electronics',55000,5),
(6,'Chair','Furniture',2500,6),
(7,'Table','Furniture',4500,7),
(8,'Pen','Stationery',20,8),
(9,'Notebook','Stationery',60,9),
(10,'Router','Networking',1800,10);


CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    reorder_level INT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Inventory VALUES
(1,1,150,20),
(2,2,200,30),
(3,3,50,10),
(4,4,40,10),
(5,5,25,5),
(6,6,80,15),
(7,7,60,10),
(8,8,500,100),
(9,9,300,50),
(10,10,70,15);