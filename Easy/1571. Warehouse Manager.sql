-- Table: Warehouse

-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | name         | varchar |
-- | product_id   | int     |
-- | units        | int     |
-- +--------------+---------+
-- (name, product_id) is the primary key for this table.
-- Each row of this table contains the information of the products in each warehouse.
 

-- Table: Products

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | product_id    | int     |
-- | product_name  | varchar |
-- | Width         | int     |
-- | Length        | int     |
-- | Height        | int     |
-- +---------------+---------+
-- product_id is the primary key for this table.
-- Each row of this table contains information about the product dimensions (Width, Lenght, and Height) in feets of each product.
 

-- Write an SQL query to report the number of cubic feet of volume the inventory occupies in each warehouse.

-- Return the result table in any order.
# Write your MySQL query statement below
SELECT w.name as warehouse_name, sum(p.Width*p.Length*p.Height*w.units) as volume
FROM Warehouse w
Inner Join Products p
USING(product_id)
GROUP BY w.namex