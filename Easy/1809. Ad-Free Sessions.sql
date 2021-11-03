-- Table: Playback

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | session_id  | int  |
-- | customer_id | int  |
-- | start_time  | int  |
-- | end_time    | int  |
-- +-------------+------+
-- session_id is the primary key for this table.
-- customer_id is the ID of the customer watching this session.
-- The session runs during the inclusive interval between start_time and end_time.
-- It is guaranteed that start_time <= end_time and that two sessions for the same customer do not intersect.
 

-- Table: Ads

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | ad_id       | int  |
-- | customer_id | int  |
-- | timestamp   | int  |
-- +-------------+------+
-- ad_id is the primary key for this table.
-- customer_id is the ID of the customer viewing this ad.
-- timestamp is the moment of time at which the ad was shown.
 

-- Write an SQL query to report all the sessions that did not get shown any ads.

-- Return the result table in any order.
# Write your MySQL query statement below
SELECT distinct session_id from Playback 
where session_id not in
(SELECT distinct p.session_id
FROM Playback p 
INNER JOIN Ads a
using(customer_id) 
WHERE a.timestamp >= p.start_time and a.timestamp <= p.end_time)


