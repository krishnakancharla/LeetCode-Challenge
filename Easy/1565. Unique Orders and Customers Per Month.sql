-- SQL Schema
-- Table: Orders

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | order_id      | int     |
-- | order_date    | date    |
-- | customer_id   | int     |
-- | invoice       | int     |
-- +---------------+---------+
-- order_id is the primary key for this table.
-- This table contains information about the orders made by customer_id.
 

-- Write an SQL query to find the number of unique orders and the number of unique customers with invoices > $20 for each different month.

-- Return the result table sorted in any order.
# Write your MySQL query statement below
SELECT DATE_FORMAT(order_date, "%Y-%m") as month, count(distinct order_id) as order_count, count(distinct customer_id) as customer_count 
FROM Orders
WHERE invoice > 20
GROUP BY 1