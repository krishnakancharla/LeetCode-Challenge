-- Table: Products

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | store       | enum    |
-- | price       | int     |
-- +-------------+---------+
-- (product_id, store) is the primary key for this table.
-- store is an ENUM of type ('store1', 'store2', 'store3') where each represents the store this product is available at.
-- price is the price of the product at this store.
 

-- Write an SQL query to find the price of each product in each store.

-- Return the result table in any order.
# Write your MySQL query statement below
SELECT product_id, 
       SUM(CASE WHEN store = 'store1' THEN price END) AS 'store1',
       SUM(CASE WHEN store = 'store2' THEN price END) AS 'store2',
       SUM(CASE WHEN store = 'store3' THEN price END) AS 'store3'
FROM Products
GROUP BY 1
ORDER BY 1