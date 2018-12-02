# 查询男生、女生的人数
SELECT gender,COUNT(1) FROM student GROUP BY gender;