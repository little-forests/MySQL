# 查询每门课程被选修的学生数；
SELECT course_id,cname,COUNT(DISTINCT student_id) FROM score
LEFT JOIN course
ON score.course_id=course.cid
GROUP BY course_id;