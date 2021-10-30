-- Table: Product

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | name        | varchar |
-- +-------------+---------+
-- product_id is the primary key for this table.
-- This table contains the ID and the name of the product. The name consists of only lowercase English letters. No two products have the same name.
 

-- Table: Invoice

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | invoice_id  | int  |
-- | product_id  | int  |
-- | rest        | int  |
-- | paid        | int  |
-- | canceled    | int  |
-- | refunded    | int  |
-- +-------------+------+
-- invoice_id is the primary key for this table and the id of this invoice.
-- product_id is the id of the product for this invoice.
-- rest is the amount left to pay for this invoice.
-- paid is the amount paid for this invoice.
-- canceled is the amount canceled for this invoice.
-- refunded is the amount refunded for this invoice.
 

-- Write an SQL query that will, for all products, return each product name with the total amount due, paid, canceled, and refunded across all invoices.

-- Return the result table ordered by product_name.
# Write your MySQL query statement below
with cte as (SELECT product_id, sum(rest) as rest, sum(paid) as paid, sum(canceled) as canceled, sum(refunded) as refunded
FROM Invoice
GROUP BY product_id)

SELECT name, IFNULL(rest,0) as rest, IFNULL(paid,0) as paid, IFNULL(canceled,0) as canceled, IFNULL(refunded,0) as refunded
FROM Product
LEFT JOIN cte
using(product_id)
ORDER BY name

