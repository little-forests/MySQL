# 检索“004”课程分数小于60，按分数降序排列的同学学号和姓名
SELECT student_id,student.sname,A.number FROM
	(SELECT student_id,number FROM score WHERE course_id=4 AND number<60) AS A
LEFT JOIN student ON A.student_id=student.sid
ORDER BY A.number DESC;