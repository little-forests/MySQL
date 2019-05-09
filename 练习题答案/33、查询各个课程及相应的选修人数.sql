# 查询各个课程及相应的选修人数
SELECT course_id,COUNT(1) FROM score
GROUP BY course_id;