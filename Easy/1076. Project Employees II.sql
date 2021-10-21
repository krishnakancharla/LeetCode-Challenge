-- Table: Project

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | project_id  | int     |
-- | employee_id | int     |
-- +-------------+---------+
-- (project_id, employee_id) is the primary key of this table.
-- employee_id is a foreign key to Employee table.
-- Each row of this table indicates that the employee with employee_id is working on the project with project_id.
 

-- Table: Employee

-- +------------------+---------+
-- | Column Name      | Type    |
-- +------------------+---------+
-- | employee_id      | int     |
-- | name             | varchar |
-- | experience_years | int     |
-- +------------------+---------+
-- employee_id is the primary key of this table.
-- Each row of this table contains information about one employee.
 

-- Write an SQL query that reports all the projects that have the most employees.

-- Return the result table in any order.

-- The query result format is in the following example.
# Write your MySQL query statement below
with project_stats as (
select 
    project_id,
    rank() OVER(order by count(p.employee_id) DESC) AS project_rank
from 
    project p 
    join employee e on e.employee_id = p.employee_id
group by 
    project_id
)

select project_id from project_stats where project_rank = 1;