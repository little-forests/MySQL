# 查询课程编号“002”的成绩比课程编号“001”课程低的所有同学的学号、姓名
SELECT C.student_id,student.sname,num_id1,num_id2 FROM
	(SELECT A.student_id,num_id1,num_id2 FROM
		(SELECT student_id,number AS num_id1 FROM score WHERE course_id=1) AS A
		LEFT JOIN
		(SELECT student_id,number AS num_id2 FROM score WHERE course_id=2) AS B
	ON A.student_id=B.student_id WHERE num_id2<if(isnull(num_id1),0,num_id1)) AS C
LEFT JOIN student ON C.student_id=student.sid;