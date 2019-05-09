#删除学习“李平老师”课的score表记录
DELETE FROM score 
WHERE course_id IN(
	SELECT cid FROM course 
	LEFT JOIN teacher ON course.teacher_id=teacher.tid 
	WHERE tname='李平老师');