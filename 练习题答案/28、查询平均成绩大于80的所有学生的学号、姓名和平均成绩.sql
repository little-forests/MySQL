# 查询平均成绩大于80的所有学生的学号、姓名和平均成绩
SELECT student.sid,student.sname,AVG(score.number) FROM student
LEFT JOIN score ON student.sid=score.student_id
GROUP BY student.sid HAVING AVG(score.number)>80;