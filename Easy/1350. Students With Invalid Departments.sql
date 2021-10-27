-- Table: Departments

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | name          | varchar |
-- +---------------+---------+
-- id is the primary key of this table.
-- The table has information about the id of each department of a university.
 

-- Table: Students

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | name          | varchar |
-- | department_id | int     |
-- +---------------+---------+
-- id is the primary key of this table.
-- The table has information about the id of each student at a university and the id of the department he/she studies at.
 

-- Write an SQL query to find the id and the name of all students who are enrolled in departments that no longer exist.

-- Return the result table in any order.
# Write your MySQL query statement below
SELECT s.id, s.name FROM Students S
WHERE s.department_id not in (SELECT distinct id FROM Departments)
