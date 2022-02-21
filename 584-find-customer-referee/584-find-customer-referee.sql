# Write your MySQL query statement below
SELECT name from Customer 
where id not in (SELECT id 
From Customer
Where referee_id=2)
