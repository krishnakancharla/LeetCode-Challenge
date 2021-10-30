-- Table: Employees

-- +-------------+----------+
-- | Column Name | Type     |
-- +-------------+----------+
-- | employee_id | int      |
-- | name        | varchar  |
-- | reports_to  | int      |
-- | age         | int      |
-- +-------------+----------+
-- employee_id is the primary key for this table.
-- This table contains information about the employees and the id of the manager they report to. Some employees do not report to anyone (reports_to is null). 
 

-- For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.

-- Write an SQL query to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.

-- Return the result table ordered by employee_id.
# Write your MySQL query statement below
SELECT m.employee_id, m.name, count(e.reports_to) as reports_count, round(avg(e.age)) as average_age
FROM Employees e
INNER JOIN Employees m
on e.reports_to=m.employee_id
WHERE e.reports_to is not null
GROUP BY m.employee_id
ORDER BY m.employee_id
