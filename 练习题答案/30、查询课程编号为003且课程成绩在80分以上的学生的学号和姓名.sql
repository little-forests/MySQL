# 查询课程编号为003且课程成绩在80分以上的学生的学号和姓名
SELECT student_id,student.sname,number FROM score
LEFT JOIN student ON score.student_id=student.sid
WHERE course_id=3 AND number>80;
