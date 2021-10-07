-- Table: Person

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | Id          | int     |
-- | Email       | varchar |
-- +-------------+---------+
-- Id is the primary key column for this table.
-- Each row of this table contains an email. The emails will not contain uppercase letters.
 

-- Write an SQL query to report all the duplicate emails.

-- Return the result table in any order.

-- The query result format is in the following example.

Select distinct Email 
From (SELECT Email, Count(Email) as mail_count
        FROM Person
        Group By Email
        ) as sub
where mail_count > 1