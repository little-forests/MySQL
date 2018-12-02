# 方法1：查询学过“李平老师”所教的所有课的同学的学号、姓名
SELECT A.student_id,student.sname FROM
(SELECT student_id FROM score WHERE course_id in 
(SELECT cid FROM course LEFT JOIN teacher ON course.teacher_id=teacher.tid WHERE teacher.tname='李平老师')
GROUP BY student_id)AS A
LEFT JOIN
student ON A.student_id=student.sid;

# 方法2：查询学过“李平老师”所教的所有课的同学的学号、姓名
SELECT student_id,student.sname FROM score
LEFT JOIN student ON score.student_id=student.sid
WHERE course_id in (SELECT cid FROM course LEFT JOIN teacher ON course.teacher_id=teacher.tid WHERE teacher.tname='李平老师')
GROUP BY student_id;

