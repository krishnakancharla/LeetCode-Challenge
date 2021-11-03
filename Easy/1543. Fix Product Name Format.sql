-- Table: Sales

-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | sale_id      | int     |
-- | product_name | varchar |
-- | sale_date    | date    |
-- +--------------+---------+
-- sale_id is the primary key for this table.
-- Each row of this table contains the product name and the date it was sold.
 

-- Since table Sales was filled manually in the year 2000, product_name may contain leading and/or trailing white spaces, also they are case-insensitive.

-- Write an SQL query to report

-- product_name in lowercase without leading or trailing white spaces.
-- sale_date in the format ('YYYY-MM').
-- total the number of times the product was sold in this month.
-- Return the result table ordered by product_name in ascending order. In case of a tie, order it by sale_date in ascending order.
SELECT
  TRIM(LOWER(product_name)) product_name,
  DATE_FORMAT(sale_date, '%Y-%m') sale_date,
  COUNT(*) total 
FROM Sales
GROUP BY 1,2
ORDER BY 1,2