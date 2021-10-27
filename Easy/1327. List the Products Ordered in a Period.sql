-- Table: Products

-- +------------------+---------+
-- | Column Name      | Type    |
-- +------------------+---------+
-- | product_id       | int     |
-- | product_name     | varchar |
-- | product_category | varchar |
-- +------------------+---------+
-- product_id is the primary key for this table.
-- This table contains data about the company's products.
 

-- Table: Orders

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | product_id    | int     |
-- | order_date    | date    |
-- | unit          | int     |
-- +---------------+---------+
-- There is no primary key for this table. It may have duplicate rows.
-- product_id is a foreign key to the Products table.
-- unit is the number of products ordered in order_date.
 

-- Write an SQL query to get the names of products that have at least 100 units ordered in February 2020 and their amount.

-- Return result table in any order.

-- The query result format is in the following example.
# Write your MySQL query statement below
with cte as (SELECT product_id, product_name, order_date, unit 
FROM Products 
INNER JOIN Orders 
using(product_id)
WHERE month(order_date)='02' and year(order_date)=2020)


SELECT product_name, sum(unit) as unit
FROM cte
GROUP BY product_name
HAVING sum(unit) >= 100



