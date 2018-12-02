# 查询两门以上不及格课程的同学的学号及其平均成绩
SELECT student_id,student.sname,COUNT(course_id),AVG(number) FROM score
LEFT JOIN student ON score.student_id=student.sid
WHERE student_id in(
	SELECT student_id FROM score WHERE number<60 GROUP BY student_id HAVING COUNT(course_id)>1);