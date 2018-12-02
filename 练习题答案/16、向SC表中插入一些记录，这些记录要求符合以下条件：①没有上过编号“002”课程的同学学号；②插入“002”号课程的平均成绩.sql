# 向SC表中插入一些记录，这些记录要求符合以下条件：①没有上过编号“002”课程的同学学号；②插入“002”号课程的平均成绩
INSERT INTO score(student_id,course_id,number) 
SELECT sid,2,(SELECT AVG(number) FROM score WHERE course_id=2) FROM student 
	WHERE sid not in (SELECT student_id FROM score WHERE course_id=2);