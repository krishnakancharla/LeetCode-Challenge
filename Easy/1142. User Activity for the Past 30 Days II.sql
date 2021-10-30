-- Table: Activity

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | user_id       | int     |
-- | session_id    | int     |
-- | activity_date | date    |
-- | activity_type | enum    |
-- +---------------+---------+
-- There is no primary key for this table, it may have duplicate rows.
-- The activity_type column is an ENUM of type ('open_session', 'end_session', 'scroll_down', 'send_message').
-- The table shows the user activities for a social media website. 
-- Note that each session belongs to exactly one user.
 

-- Write an SQL query to find the average number of sessions per user for a period of 30 days ending 2019-07-27 inclusively, rounded to 2 decimal places. The sessions we want to count for a user are those with at least one activity in that time period.
# Write your MySQL query statement below
SELECT ifnull(round(avg(sessions_per_user),2),0) as average_sessions_per_user from 
(SELECT user_id, count(distinct(session_id)) as sessions_per_user from
(SELECT user_id, session_id
FROM Activity
where activity_date > (DATE_SUB("2019-07-27", INTERVAL 30 DAY)) and activity_date < '2019-07-27') AS SUB1
GROUP BY user_id) as SUB2
