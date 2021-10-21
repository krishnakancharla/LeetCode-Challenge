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
 

-- Write an SQL query that reports the buyers who have bought S8 but not iPhone. Note that S8 and iPhone are products present in the Product table.

-- Return the result table in any order.

-- The query result format is in the following example.
# Write your MySQL query statement below
#Write an SQL query that reports the buyers who have bought S8 but not iPhone. Note #that S8 and iPhone are products present in the Product table.
#S8buyers
with cte as (select s.buyer_id 
             from Sales s
             inner join Product p
             on s.product_id=p.product_id

             where p.product_name='S8')
#Select from CTE where the user is NOT an iPhone buyer

select distinct buyer_id from cte
where buyer_id not in (
select s.buyer_id 
             from Sales s
             inner join Product p
             using(product_id)
             where p.product_name='iPhone')