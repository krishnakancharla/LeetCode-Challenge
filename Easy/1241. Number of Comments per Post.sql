-- Table: Submissions

-- +---------------+----------+
-- | Column Name   | Type     |
-- +---------------+----------+
-- | sub_id        | int      |
-- | parent_id     | int      |
-- +---------------+----------+
-- There is no primary key for this table, it may have duplicate rows.
-- Each row can be a post or comment on the post.
-- parent_id is null for posts.
-- parent_id for comments is sub_id for another post in the table.
 

-- Write an SQL query to find the number of comments per post. The result table should contain post_id and its corresponding number_of_comments.

-- The Submissions table may contain duplicate comments. You should count the number of unique comments per post.

-- The Submissions table may contain duplicate posts. You should treat them as one post.

-- The result table should be ordered by post_id in ascending order.

-- The query result format is in the following example.
# Write your MySQL query statement below
select s1.sub_id as post_id, count(distinct s2.sub_id) as number_of_comments
from submissions s1 left join submissions s2
on s1.sub_id = s2.parent_id
where s1.parent_id is null
group by s1.sub_id
order by s1.sub_id