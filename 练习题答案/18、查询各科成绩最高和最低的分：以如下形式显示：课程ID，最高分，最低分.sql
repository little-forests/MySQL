# 查询各科成绩最高和最低的分：以如下形式显示：课程ID，最高分，最低分
SELECT course_id,MAX(number) AS max_num,MIN(number) AS min_num FROM score GROUP BY course_id;