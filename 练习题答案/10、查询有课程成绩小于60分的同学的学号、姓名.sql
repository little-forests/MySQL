# 方法1：查询有课程成绩小于60分的同学的学号、姓名
SELECT A.student_id,student.sname FROM
	(SELECT student_id FROM score WHERE number<60) AS A
LEFT JOIN student ON A.student_id=student.sid GROUP BY A.student_id;

# 方法2：查询有课程成绩小于60分的同学的学号、姓名
SELECT sid,sname FROM student WHERE sid in(SELECT student_id FROM score WHERE number<60);