# Write your MySQL query statement below
SELECT email
FROM Person
GROUP BY email
Having count(email)>1