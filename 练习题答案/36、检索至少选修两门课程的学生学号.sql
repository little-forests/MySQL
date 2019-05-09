# 检索至少选修两门课程的学生学号
SELECT student_id,COUNT(1) FROM score
GROUP BY student_id HAVING COUNT(1)>1;