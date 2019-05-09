#1、查询“生物”课程比“物理”课程成绩高的所有学生的学号
SELECT A.student_id FROM
	(SELECT student_id,number sw FROM score
	 LEFT JOIN course ON score.course_id=course.cid
	 WHERE cname='生物') A
LEFT JOIN 
	(SELECT student_id,number wl FROM score
   LEFT JOIN course ON score.course_id=course.cid
	 WHERE cname='物理') B
ON A.student_id=B.student_id
WHERE sw>IFNULL(wl,0)
ORDER BY A.student_id;
