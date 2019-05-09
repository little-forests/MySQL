# 查询课程名称为“生物”，且分数低于60的学生姓名和分数
SELECT sname,number FROM score
LEFT JOIN course ON score.course_id=course.cid
LEFT JOIN student ON score.student_id=student.sid
WHERE cname='生物' AND number<60;