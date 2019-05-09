# 查询两门以上不及格课程的同学的学号及其平均成绩
SELECT student_id,AVG(number) FROM score
GROUP BY student_id
HAVING student_id IN(
	SELECT student_id FROM score WHERE number<60 GROUP BY student_id HAVING COUNT(1)>1);
