-- Table: Users

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | user_id     | int     |
-- | user_name   | varchar |
-- +-------------+---------+
-- user_id is the primary key for this table.
-- Each row of this table contains the name and the id of a user.
 

-- Table: Register

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | contest_id  | int     |
-- | user_id     | int     |
-- +-------------+---------+
-- (contest_id, user_id) is the primary key for this table.
-- Each row of this table contains the id of a user and the contest they registered into.
 

-- Write an SQL query to find the percentage of the users registered in each contest rounded to two decimals.
# Write your MySQL query statement below
with cte1 as (SELECT contest_id, count(user_id) as cont_total
             FROM Register
             Group by contest_id),
              cte2 as (SELECT count(user_id) as total
              FROM Users)
              
SELECT cte1.contest_id, round(cte1.cont_total/cte2.total*100,2) as percentage
FROM cte1,cte2
ORDER BY percentage desc, contest_id
              