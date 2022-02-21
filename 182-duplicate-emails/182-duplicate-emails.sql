# Write your MySQL query statement below
SELECT email from (SELECT email, count(email) as count_mail
FROM person
GROUP BY email
HAVING count_mail>1) as Email