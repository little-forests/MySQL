# 查询没学过“李平老师”讲授的任一门课程的学生姓名
SELECT student_id,student.sname FROM score
LEFT JOIN student ON score.student_id=student.sid
WHERE student_id not in (
	SELECT student_id FROM score WHERE score.course_id not in(SELECT cid FROM course LEFT JOIN teacher ON course.teacher_id=teacher.tid WHERE teacher.tname='李平老师')
		GROUP BY student_id)
GROUP BY student_id;