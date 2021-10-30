-- Table: Candidate

-- +-------------+----------+
-- | Column Name | Type     |
-- +-------------+----------+
-- | id          | int      |
-- | name        | varchar  |
-- +-------------+----------+
-- id is the primary key column for this table.
-- Each row of this table contains information about the id and the name of a candidate.
 

-- Table: Vote

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | id          | int  |
-- | candidateId | int  |
-- +-------------+------+
-- id is an auto-increment primary key.
-- candidateId is a foreign key to id from the Candidate table.
-- Each row of this table determines the candidate who got the ith vote in the elections.
 

-- Write an SQL query to report the name of the winning candidate (i.e., the candidate who got the largest number of votes).

-- The test cases are generated so that exactly one candidate wins the elections.
# Write your MySQL query statement below
SELECT name FROM Candidate 
where id in (SELECT candidateId FROM (SELECT candidateId, count(id) as total_votes
FROM Vote
GROUP BY candidateId
ORDER BY total_votes desc
LIMIT 1) X)