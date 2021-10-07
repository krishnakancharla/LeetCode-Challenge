
183. Customers Who Never Order
Easy

666

62

Add to List

Share
SQL Schema
Table: Customers

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | Id          | int     |
-- | Name        | varchar |
-- +-------------+---------+
-- Id is the primary key column for this table.
-- Each row of this table indicates the ID and name of a customer.
 

-- Table: Orders

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | Id          | int  |
-- | CustomerId  | int  |
-- +-------------+------+
-- Id is the primary key column for this table.
-- CustomerId is a foreign key of the ID from the Customers table.
-- Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
 

-- Write an SQL query to report all customers who never order anything.

-- Return the result table in any order.

-- The query result format is in the following example.

 
SELECT Name as Customers
FROM Customers
Where Id NOT IN (SELECT DISTINCT CustomerId
                 FROM Orders)