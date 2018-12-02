#查询学过“001”并且也学过编号“002”课程的同学的学号、姓名
SELECT A.student_id,student.sname FROM 
(SELECT*FROM score WHERE course_id=1 OR course_id=2) AS A 
LEFT JOIN
student ON A.student_id=student.sid GROUP BY student_id HAVING COUNT(A.course_id)=2;
