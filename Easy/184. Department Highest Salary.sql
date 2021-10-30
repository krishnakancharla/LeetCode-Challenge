-- Table: Employee

-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | id           | int     |
-- | name         | varchar |
-- | salary       | int     |
-- | departmentId | int     |
-- +--------------+---------+
-- id is the primary key column for this table.
-- departmentId is a foreign key of the ID from the Department table.
-- Each row of this table indicates the ID, name, and salary of an employee. It also contains the ID of their department.
 

-- Table: Department

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- +-------------+---------+
-- id is the primary key column for this table.
-- Each row of this table indicates the ID of a department and its name.
 

-- Write an SQL query to find employees who have the highest salary in each of the departments.

-- Return the result table in any order.
# Write your MySQL query statement below
WITH cte as (SELECT d.name as Department, e.name as Employee, e.salary as Salary, dense_rank() over (partition by d.name order by e.salary desc ) as ranking
FROM Department d
INNER JOIN Employee e 
on e.departmentId=d.id )

SELECT Department, Employee, Salary
FROM CTE
where ranking =1