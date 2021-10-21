-- Table: Product

-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | product_id   | int     |
-- | product_name | varchar |
-- | unit_price   | int     |
-- +--------------+---------+
-- product_id is the primary key of this table.
-- Each row of this table indicates the name and the price of each product.
-- Table: Sales

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | seller_id   | int     |
-- | product_id  | int     |
-- | buyer_id    | int     |
-- | sale_date   | date    |
-- | quantity    | int     |
-- | price       | int     |
-- +-------------+---------+
-- This table has no primary key, it can have repeated rows.
-- product_id is a foreign key to the Product table.
-- Each row of this table contains some information about one sale.
 

-- Write an SQL query that reports the best seller by total sales price, If there is a tie, report them all.
# Write your MySQL query statement below
#rank sellers by price and display the first rank

with cte as (
    select s.seller_id, rank() over(order by sum(s.price) desc) as ranking
    from Sales s
    group by seller_id)
    
select seller_id from cte
where ranking=1