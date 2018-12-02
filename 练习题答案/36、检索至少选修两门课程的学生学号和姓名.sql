# 检索至少选修两门课程的学生学号和姓名
SELECT student_id,student.sname,COUNT(number) FROM score
LEFT JOIN student ON score.student_id=student.sid
GROUP BY student_id HAVING COUNT(number)>1;