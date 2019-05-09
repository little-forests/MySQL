# 查询每门课程成绩最好的前两名
SELECT DISTINCT course_id,number FROM score s
WHERE
	(SELECT COUNT(DISTINCT number) FROM score
	 WHERE number>=s.number AND course_id=s.course_id)<=2
ORDER BY course_id,number DESC;