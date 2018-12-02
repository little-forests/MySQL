#查询没学过“李平”老师课的同学的学号、姓名
#思路：由1-2-3的顺序进行编写

#3、排除选择李平老师讲课的学生
SELECT sid,sname FROM student WHERE sid not in
#2、查出选择李平老师讲课的学生
(SELECT student_id FROM score WHERE course_id in
#1、查出李平老师所受的课
(SELECT cid FROM course LEFT JOIN teacher ON course.teacher_id=teacher.tid WHERE tname='李平老师'));