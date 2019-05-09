# 查询全部学生都选修的课程的课程号和课程名
SELECT course_id,cname FROM score
LEFT JOIN course
ON score.course_id=course.cid
GROUP BY course_id
HAVING COUNT(1)=(SELECT COUNT(1) FROM student);