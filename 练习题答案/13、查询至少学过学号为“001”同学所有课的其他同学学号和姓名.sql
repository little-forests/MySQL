SELECT student_id,student.sname,COUNT(course_id) FROM score 
LEFT JOIN student ON score.student_id=student.sid 
WHERE student_id!=1 AND course_id in(SELECT course_id FROM score WHERE student_id=1)
GROUP BY student_id HAVING COUNT(course_id)=(select COUNT(course_id) FROM score WHERE student_id=1);
