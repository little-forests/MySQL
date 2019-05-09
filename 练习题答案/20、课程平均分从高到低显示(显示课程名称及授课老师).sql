# 课程平均分从高到低显示(显示课程名称及授课老师)
SELECT cid,cname,tname,AVG(number) FROM course
LEFT JOIN teacher ON course.teacher_id=teacher.tid
LEFT JOIN score ON course.cid=score.course_id
GROUP BY cid
ORDER BY cid DESC;