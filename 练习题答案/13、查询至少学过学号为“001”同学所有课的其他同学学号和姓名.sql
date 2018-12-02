# 查询至少学过学号为“001”同学所有课的其他同学学号和姓名
SELECT student_id,student.sname,COUNT(course_id) FROM score
LEFT JOIN student ON score.student_id=student.sid
WHERE student_id !=1 AND course_id in(SELECT course_id FROM score WHERE student_id=1) 
	GROUP BY student_id HAVING COUNT(course_id)=(SELECT COUNT(course_id) FROM score WHERE student_id=1);

# 用于COUNT(course_id)的对比
SELECT student_id,student.sname,COUNT(course_id) FROM score
LEFT JOIN student ON score.student_id=student.sid GROUP BY student_id;
