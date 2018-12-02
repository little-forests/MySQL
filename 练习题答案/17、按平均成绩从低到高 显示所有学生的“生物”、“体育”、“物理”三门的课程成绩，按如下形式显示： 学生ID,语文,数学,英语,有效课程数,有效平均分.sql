# 按平均成绩从低到高 显示所有学生的“生物”、“体育”、“物理”三门的课程成绩，按如下形式显示： 学生ID,语文,数学,英语,有效课程数,有效平均分
SELECT S.student_id,
(SELECT number FROM score LEFT JOIN course ON score.course_id=course.cid WHERE course.cname='生物' AND score.student_id=S.student_id) AS sw, 
(SELECT number FROM score LEFT JOIN course ON score.course_id=course.cid WHERE course.cname='体育' AND score.student_id=S.student_id) AS ty,
(SELECT number FROM score LEFT JOIN course ON score.course_id=course.cid WHERE course.cname='物理' AND score.student_id=S.student_id) AS wl,
COUNT(S.course_id),
AVG(S.number)
FROM score AS S GROUP BY student_id DESC;