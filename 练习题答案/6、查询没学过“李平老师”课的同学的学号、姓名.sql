#查询没学过“李平老师”课的同学的学号、姓名
SELECT sid,sname FROM student WHERE sid not in(
SELECT student_id FROM score WHERE course_id in
(SELECT cid FROM course LEFT JOIN teacher ON course.teacher_id=teacher.tid WHERE teacher.tname='李平老师')
);