-- Table: Person

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | Id          | int     |
-- | Email       | varchar |
-- +-------------+---------+
-- Id is the primary key column for this table.
-- Each row of this table contains an email. The emails will not contain uppercase letters.
 

-- Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest Id.

-- Return the result table in any order.

-- The query result format is in the following example.

DELETE p1 FROM Person p1,
    Person p2
WHERE
    p1.Email = p2.Email AND p1.Id > p2.Id;
 