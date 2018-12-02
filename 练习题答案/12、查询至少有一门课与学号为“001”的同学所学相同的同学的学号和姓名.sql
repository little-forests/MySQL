# 查询至少有一门课与学号为“001”的同学所学相同的同学的学号和姓名
SELECT student_id,student.sname FROM score 
LEFT JOIN student ON score.student_id=student.sid
WHERE student_id !=1 AND course_id in(SELECT course_id FROM score WHERE student_id=1) GROUP BY student_id;