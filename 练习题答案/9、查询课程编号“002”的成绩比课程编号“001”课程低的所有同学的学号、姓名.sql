#查询课程编号“002”的成绩比课程编号“001”课程低的所有同学的学号、姓名
SELECT A.student_id,sname,num_1,num_2 FROM
	(SELECT student_id,number num_1 FROM score
	 WHERE course_id=1) A
LEFT JOIN
	(SELECT student_id,number num_2 FROM score
	 WHERE course_id=2) B
ON A.student_id=B.student_id
LEFT JOIN student
ON A.student_id=student.sid
WHERE num_1>num_2;