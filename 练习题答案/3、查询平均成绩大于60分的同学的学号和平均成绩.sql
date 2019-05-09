#查询平均成绩大于60分的同学的学号和平均成绩
SELECT student_id,AVG(number) FROM score 
GROUP BY student_id 
HAVING AVG(number)>60;

#查询平均成绩大于60分的同学的学号和平均成绩(添加学生名)
SELECT student_id,student.sname,AVG(number) FROM score
LEFT JOIN student ON score.student_id=student.sid 
GROUP BY student_id 
HAVING AVG(number)>60;
