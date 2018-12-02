# 查询没有学全所有课的同学的学号、姓名
SELECT student_id,student.sname,COUNT(course_id) FROM score
LEFT JOIN student ON score.student_id=student.sid
GROUP BY student_id HAVING COUNT(course_id)=(SELECT COUNT(cname) FROM course);
