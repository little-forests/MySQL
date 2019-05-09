# 查询平均成绩大于80的所有学生的学号、姓名和平均成绩
SELECT student_id,sname,AVG(number) num_avg FROM score
LEFT JOIN student
ON score.student_id=student.sid
GROUP BY student_id
HAVING num_avg>80;