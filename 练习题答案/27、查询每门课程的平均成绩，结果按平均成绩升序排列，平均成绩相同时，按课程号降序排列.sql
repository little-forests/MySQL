# 查询每门课程的平均成绩，结果按平均成绩升序排列，平均成绩相同时，按课程号降序排列
SELECT course_id,AVG(number) AS num_avg FROM score
GROUP BY course_id
ORDER BY num_avg,course_id DESC;