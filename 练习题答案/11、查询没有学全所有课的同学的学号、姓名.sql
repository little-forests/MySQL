#查询没有学全所有课的同学的学号、姓名
SELECT student_id,sname FROM score
LEFT JOIN student
ON score.student_id=student.sid
GROUP BY student_id
HAVING COUNT(DISTINCT course_id)<(SELECT COUNT(DISTINCT course_id) FROM score);
