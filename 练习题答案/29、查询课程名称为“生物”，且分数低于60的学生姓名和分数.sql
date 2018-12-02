# 查询课程名称为“生物”，且分数低于60的学生姓名和分数
SELECT student_id,student.sname,score.number FROM score
LEFT JOIN student ON score.student_id=student.sid
LEFT JOIN course ON score.course_id=course.cid 
WHERE course.cname='生物' AND score.number<60;