-- Table: NPV

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | year          | int     |
-- | npv           | int     |
-- +---------------+---------+
-- (id, year) is the primary key of this table.
-- The table has information about the id and the year of each inventory and the corresponding net present value.
 

-- Table: Queries

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | year          | int     |
-- +---------------+---------+
-- (id, year) is the primary key of this table.
-- The table has information about the id and the year of each inventory query.
 

-- Write an SQL query to find the npv of each query of the Queries table.

-- Return the result table in any order.

-- The query result format is in the following example.
# Write your MySQL query statement below
SELECT q.id, q.year, IFNULL(n.npv,0) AS npv
FROM NPV n
RIGHT JOIN Queries q
using(id, year)