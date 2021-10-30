-- Table: SurveyLog

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | id          | int  |
-- | action      | ENUM |
-- | question_id | int  |
-- | answer_id   | int  |
-- | q_num       | int  |
-- | timestamp   | int  |
-- +-------------+------+
-- There is no primary key for this table. It may contain duplicates.
-- action is an ENUM of the type: "show", "answer", or "skip".
-- Each row of this table indicates the user with ID = id has taken an action with the question question_id at time timestamp.
-- If the action taken by the user is "answer", answer_id will contain the id of that answer, otherwise, it will be null.
-- q_num is the numeral order of the question in the current session.
 

-- The answer rate for a question is the number of times a user answered the question by the number of times a user showed the question.

-- Write an SQL query to report the question that has the highest answer rate. If multiple questions have the same maximum answer rate, report the question with the smallest question_id.

-- The query result format is in the following example.
# Write your MySQL query statement below

with showcount as (SELECT question_id, count(action) as show_count
FROM SurveyLog
where action = 'show'
GROUP BY question_id),

answercount as 
(SELECT question_id, count(action) as answer_count
FROM SurveyLog
where action = 'answer'
GROUP BY question_id),

main as (SELECT DISTINCT s1.question_id,  ifnull(a.answer_count/s2.show_count,0) as answer_rate
FROM SurveyLog s1
LEFT JOIN showcount s2
on s1.question_id=s2.question_id
LEFT JOIN answercount a
on s2.question_id=a.question_id),

r as (SELECT question_id, dense_rank() over(order by answer_rate desc) as ranking
FROM main)

SELECT question_id as survey_log
FROM r
where ranking = 1
ORDER BY question_id
LIMIT 1;

