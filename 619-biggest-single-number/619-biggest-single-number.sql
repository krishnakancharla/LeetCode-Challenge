# Write your MySQL query statement below
SELECT MAX(num) as num from (
SELECT num
FROM MyNumbers
Group BY num
HAVING Count(num)=1) as sub 

