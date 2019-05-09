#查询学过“001”并且也学过编号“002”课程的同学的学号、姓名
SELECT A.student_id,sname FROM 
	(SELECT student_id,course_id FROM score
	 WHERE course_id=1 OR course_id=2) A
LEFT JOIN student
ON A.student_id=student.sid
GROUP BY A.student_id HAVING COUNT(course_id)=2
ORDER BY A.student_id;