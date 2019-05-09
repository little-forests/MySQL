#查询有课程成绩小于60分的同学的学号、姓名
SELECT A.student_id,student.sname,course_id,number FROM
	(SELECT student_id,course_id,number FROM score WHERE number<60 GROUP BY student_id) AS A
LEFT JOIN
student ON A.student_id=student.sid;