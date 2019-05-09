# 查询出只选修了一门课程的全部学生的学号和姓名
SELECT student_id,sname FROM score
LEFT JOIN student
ON score.student_id=student.sid
GROUP BY student_id HAVING COUNT(course_id)=1;