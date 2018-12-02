# 查询选修“刘海燕老师”所授课程的学生中，成绩最高的学生姓名及其成绩
SELECT score.course_id,number,student_id,student.sname FROM score
LEFT JOIN student ON score.student_id=student.sid
WHERE course_id in (SELECT cid FROM course LEFT JOIN teacher ON course.teacher_id=teacher.tid WHERE teacher.tname='刘海燕老师')
ORDER BY number DESC LIMIT 1;
