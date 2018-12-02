#1、查询“生物”课程比“物理”课程成绩高的所有学生的学号
#思路：1、获取所有有生物课程的人（学号，成绩） - 临时表
#      2、获取所有有物理课程的人（学号，成绩） - 临时表
#      3、根据‘学号’连接两个临时表：
#      4、选取‘学号’、‘物理成绩’、‘生物成绩’，然后再进行条件筛选

SELECT A.student_id,sw,ty FROM
(SELECT student_id,number AS sw FROM score LEFT JOIN course ON score.course_id=course.cid WHERE course.cname='生物') AS A
LEFT JOIN
(SELECT student_id,number AS ty FROM score LEFT JOIN course ON score.course_id=course.cid WHERE course.cname='体育') AS B
ON A.student_id=B.student_id WHERE sw>if(isnull(ty),0,ty);
