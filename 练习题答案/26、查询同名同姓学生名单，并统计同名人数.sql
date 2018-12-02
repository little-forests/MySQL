# 查询同名同姓学生名单，并统计同名人数
SELECT sname,COUNT(1) FROM student GROUP BY sname;