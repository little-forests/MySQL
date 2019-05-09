#查询姓“李”的老师的个数
SELECT COUNT(DISTINCT tname) FROM teacher
WHERE tname LIKE '李%';