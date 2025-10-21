-- Returns by state
SELECT c.State, COUNT(*) AS ReturnsCount
FROM RMA r
JOIN Orders o ON r.OrderID = o.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.State
ORDER BY ReturnsCount DESC;

-- Top products sold in US
SELECT o.ProductName, SUM(o.Quantity) AS UnitsSold
FROM Orders o
GROUP BY o.ProductName
ORDER BY UnitsSold DESC
LIMIT 3;

-- Top products returned in US
SELECT o.ProductName, COUNT(*) AS ReturnEvents
FROM RMA r
JOIN Orders o ON r.OrderID = o.OrderID
GROUP BY o.ProductName
ORDER BY ReturnEvents DESC
LIMIT 3;

-- Update example: set status/step for OrderID 1001
UPDATE RMA SET Status = 'Complete', Step = 'Credit Customer Account'
WHERE OrderID = 1001;

-- Delete example: remove all 'Rejected' reasons
DELETE FROM RMA WHERE RMAReason = 'Rejected';