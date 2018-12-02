# 课程平均分从高到低显示(显示课程名称及授课老师)
SELECT AVG(score.number),course.cname,teacher.tname FROM course
LEFT JOIN score ON course.cid=score.course_id
LEFT JOIN teacher ON course.teacher_id=teacher.tid
GROUP BY score.course_id ORDER BY AVG(score.number) DESC;