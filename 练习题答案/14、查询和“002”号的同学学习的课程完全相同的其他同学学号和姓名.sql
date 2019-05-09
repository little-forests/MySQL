#查询和“002”号的同学学习的课程完全相同的其他同学学号和姓名
SELECT student_id,student.sname FROM score
LEFT JOIN student ON score.student_id=student.sid
WHERE student_id !=2 
AND course_id in (SELECT course_id FROM score WHERE student_id = 2)
	GROUP BY student_id HAVING COUNT(course_id)=(SELECT COUNT(course_id) FROM score WHERE student_id = 2)
AND student_id in (SELECT student_id FROM score GROUP BY student_id HAVING COUNT(student_id)=(SELECT COUNT(student_id) FROM score WHERE student_id = 2));