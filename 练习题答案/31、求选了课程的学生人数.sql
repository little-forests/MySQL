# 求选了课程的学生人数
SELECT COUNT(A.student_id) FROM
(SELECT student_id FROM score GROUP BY student_id) AS A;