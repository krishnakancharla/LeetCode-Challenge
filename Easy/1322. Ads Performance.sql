-- Table: Ads

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | ad_id         | int     |
-- | user_id       | int     |
-- | action        | enum    |
-- +---------------+---------+
-- (ad_id, user_id) is the primary key for this table.
-- Each row of this table contains the ID of an Ad, the ID of a user, and the action taken by this user regarding this Ad.
-- The action column is an ENUM type of ('Clicked', 'Viewed', 'Ignored').
 

-- A company is running Ads and wants to calculate the performance of each Ad.

-- Performance of the Ad is measured using Click-Through Rate (CTR) where:


-- Write an SQL query to find the ctr of each Ad. Round ctr to two decimal points.

-- Return the result table ordered by ctr in descending order and by ad_id in ascending order in case of a tie.

-- The query result format is in the following example.
# Write your MySQL query statement below
select ad_id, (case
                when sum(action="Clicked" or action="Viewed") = 0 then 0
                else round(100 * sum(action="Clicked") / sum(action="Clicked" or action="Viewed"),2)
               end) as ctr from Ads
        group by ad_id
        order by ctr desc, ad_id