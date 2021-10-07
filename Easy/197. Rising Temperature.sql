-- Table: Weather

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | Id            | int     |
-- | RecordDate    | date    |
-- | Temperature   | int     |
-- +---------------+---------+
-- Id is the primary key for this table.
-- This table contains information about the temperature on a certain day.
 

-- Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

-- Return the result table in any order.

-- The query result format is in the following example.

 # Write your MySQL query statement below
select
    W1.id
from
    Weather W1
inner join
    Weather W2
on W1.Temperature > W2.Temperature and DATE(W1.RecordDate) = DATE(W2.RecordDate + INTERVAL 1 DAY)