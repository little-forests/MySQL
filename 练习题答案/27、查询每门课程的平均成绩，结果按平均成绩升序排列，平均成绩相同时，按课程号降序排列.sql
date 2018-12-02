# 查询每门课程的平均成绩，结果按平均成绩升序排列，平均成绩相同时，按课程号降序排列
SELECT cid,cname,AVG(score.number) FROM course
LEFT JOIN score ON course.cid=score.course_id
GROUP BY cid ORDER BY AVG(score.number) ASC,cid DESC;