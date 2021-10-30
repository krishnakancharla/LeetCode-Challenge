-- Table: Visits

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | visit_id    | int     |
-- | customer_id | int     |
-- +-------------+---------+
-- visit_id is the primary key for this table.
-- This table contains information about the customers who visited the mall.
 

-- Table: Transactions

-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | transaction_id | int     |
-- | visit_id       | int     |
-- | amount         | int     |
-- +----------------+---------+
-- transaction_id is the primary key for this table.
-- This table contains information about the transactions made during the visit_id.
 

-- Write an SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

-- Return the result table sorted in any order
# Write your MySQL query statement below
SELECT customer_id, count(customer_id) as count_no_trans from (SELECT customer_id FROM (SELECT v.customer_id, t.transaction_id
FROM Visits v
Left Join Transactions t
ON v.visit_id=t.visit_id) x
WHERE transaction_id is null) y
GROUP BY customer_id
