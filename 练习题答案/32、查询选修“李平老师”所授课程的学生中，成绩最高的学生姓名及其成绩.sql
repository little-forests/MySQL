# 查询选修“李平老师”所授课程的学生中，成绩最高的学生姓名及其成绩
SELECT course_id,sname,MAX(number) FROM score
LEFT JOIN student ON score.student_id=student.sid
WHERE course_id IN(
	SELECT cid FROM course 
	LEFT JOIN teacher
	ON course.teacher_id=teacher.tid WHERE tname='李平老师')
GROUP BY course_id;