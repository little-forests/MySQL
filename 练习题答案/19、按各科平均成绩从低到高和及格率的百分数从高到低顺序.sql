# 按各科平均成绩从低到高和及格率的百分数从高到低顺序；
SELECT course_id,
			 AVG(number) AS num_avg,
			 CONCAT(ROUND(SUM(IF(number>60,1,0)*100)/COUNT(1),2),'%') AS pct
FROM score
GROUP BY course_id
ORDER BY num_avg,pct DESC;