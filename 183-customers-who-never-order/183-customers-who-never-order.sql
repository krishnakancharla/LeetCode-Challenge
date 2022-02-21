# Write your MySQL query statement below
SELECT c.name as Customers
FROM Customers c
Left join Orders o
on c.id=o.customerId
WHERE o.id is null