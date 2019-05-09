#查询学过“李平老师”所教的所有课的同学的学号、姓名
SELECT student_id,sname FROM
	(SELECT student_id,course_id FROM score
	 WHERE course_id IN(
			SELECT cid FROM course
			LEFT JOIN teacher
			ON course.teacher_id=teacher.tid
			WHERE tname='李平老师')) A
LEFT JOIN student 
ON A.student_id=student.sid
GROUP BY A.student_id HAVING COUNT(course_id)=
	(SELECT COUNT(cid) FROM course 
	 LEFT JOIN teacher 
	 ON course.teacher_id=teacher.tid
	 WHERE tname='李平老师');