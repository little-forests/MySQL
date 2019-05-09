# 查询各科成绩前三名的记录
SELECT DISTINCT course_id,cname,number FROM score s
INNER JOIN course ON s.course_id=course.cid
WHERE 
		(SELECT COUNT(DISTINCT number) FROM score
     WHERE number>=s.number AND course_id=s.course_id)<=3
ORDER BY course_id,s.number DESC;
