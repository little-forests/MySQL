#查询所有同学的学号、姓名、选课数、总成绩
SELECT student_id,sname,COUNT(1),SUM(number) FROM score
LEFT JOIN student
ON score.student_id=student.sid
GROUP BY student_id;