-- Schema for Quantigration-style RMA database
DROP TABLE IF EXISTS RMA;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
  CustomerID INTEGER PRIMARY KEY,
  Name TEXT NOT NULL,
  City TEXT,
  State TEXT,
  Email TEXT
);

CREATE TABLE Orders (
  OrderID INTEGER PRIMARY KEY,
  CustomerID INTEGER NOT NULL,
  OrderDate TEXT,
  SKU TEXT,
  ProductName TEXT,
  Quantity INTEGER,
  Price DECIMAL(10,2),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE RMA (
  RMAID INTEGER PRIMARY KEY,
  OrderID INTEGER NOT NULL,
  RMAReason TEXT,
  Status TEXT,
  Step TEXT,
  CreatedAt TEXT,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);