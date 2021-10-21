-- Table: Actions

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | user_id       | int     |
-- | post_id       | int     |
-- | action_date   | date    | 
-- | action        | enum    |
-- | extra         | varchar |
-- +---------------+---------+
-- There is no primary key for this table, it may have duplicate rows.
-- The action column is an ENUM type of ('view', 'like', 'reaction', 'comment', 'report', 'share').
-- The extra column has optional information about the action, such as a reason for the report or a type of reaction.
 

-- Write an SQL query that reports the number of posts reported yesterday for each report reason. Assume today is 2019-07-05.

-- Return the result table in any order.

-- The query result format is in the following example.

 # Write your MySQL query statement below
select extra as report_reason, count(distinct post_id) as report_count from actions
where action_date = "2019-07-04" and action = "report"
group by extra