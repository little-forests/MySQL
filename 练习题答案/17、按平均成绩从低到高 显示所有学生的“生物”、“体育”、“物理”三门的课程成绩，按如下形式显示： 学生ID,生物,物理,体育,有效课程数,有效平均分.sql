# 按平均成绩从低到高 显示所有学生的“生物”、“体育”、“物理”三门的课程成绩，按如下形式显示： 学生ID,生物,物理,体育,有效课程数,有效平均分
SELECT S.student_id,
	(SELECT number FROM score LEFT JOIN course ON score.course_id=course.cid WHERE cname='生物' AND student_id=S.student_id) sw,
	(SELECT number FROM score LEFT JOIN course ON score.course_id=course.cid WHERE cname='物理' AND student_id=S.student_id) wl,
	(SELECT number FROM score LEFT JOIN course ON score.course_id=course.cid WHERE cname='体育' AND student_id=S.student_id) ty,
COUNT(course_id),
AVG(number) 
FROM score S
GROUP BY student_id
ORDER BY AVG(number);
