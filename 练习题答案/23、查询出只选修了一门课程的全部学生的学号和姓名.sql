# 查询出只选修了一门课程的全部学生的学号和姓名
SELECT student_id,student.sname,COUNT(1) FROM score
LEFT JOIN student ON score.student_id=student.sid
GROUP BY student_id HAVING COUNT(1)=1;