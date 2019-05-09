# 检索“002”课程分数小于60，按分数降序排列的同学学号
SELECT student_id,sname,number FROM score
LEFT JOIN student
ON score.student_id=student.sid
WHERE course_id=2 AND number<60
ORDER BY number DESC;
