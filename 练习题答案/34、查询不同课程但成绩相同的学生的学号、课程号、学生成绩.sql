# 查询不同课程但成绩相同的学生的学号、课程号、学生成绩
select DISTINCT s1.course_id,s2.course_id,s1.number,s2.number from score as s1, score as s2 
where s1.number = s2.number and s1.course_id != s2.course_id;