-- Sample seed data
INSERT INTO Customers (CustomerID, Name, City, State, Email) VALUES
(1, 'Acme Retail', 'Huntington', 'NY', 'acme@example.com'),
(2, 'Bayview Co', 'Boston', 'MA', 'bayview@example.com'),
(3, 'Cedar LLC', 'Atlanta', 'GA', 'cedar@example.com'),
(4, 'Delta Group', 'Seattle', 'WA', 'delta@example.com');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, SKU, ProductName, Quantity, Price) VALUES
(1001, 1, '2025-01-10', 'SKU-100', 'Wireless Mouse', 2, 19.99),
(1002, 1, '2025-02-02', 'SKU-200', 'Mechanical Keyboard', 1, 79.99),
(1003, 2, '2025-02-20', 'SKU-100', 'Wireless Mouse', 5, 19.99),
(1004, 3, '2025-03-05', 'SKU-300', 'USB-C Hub', 3, 24.99),
(1005, 4, '2025-03-09', 'SKU-400', '27in Monitor', 1, 199.99),
(1006, 4, '2025-04-01', 'SKU-200', 'Mechanical Keyboard', 2, 79.99);

INSERT INTO RMA (RMAID, OrderID, RMAReason, Status, Step, CreatedAt) VALUES
(5001, 1001, 'Defective', 'Open', 'Inspect Item', '2025-04-10'),
(5002, 1003, 'Wrong Item', 'Complete', 'Credit Customer Account', '2025-04-22'),
(5003, 1004, 'Damaged in Transit', 'Open', 'Request Photos', '2025-05-01');