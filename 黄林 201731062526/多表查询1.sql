--多表查询JOIN 
SELECT * from STUDENT join SC ON 1=1

SELECT COUNT(*) FROM STUDENT
SELECT COUNT(*) FROM SC

SELECT STUDENT.*,SC.TNO,SC.CNO,SC.GRADE INTO TEST 
from STUDENT join SC ON 1=1

SELECT SNAME,CNAME,GRADE 
from STUDENT join SC ON STUDENT.SNO=SC.SNO
     JOIN COURSE ON COURSE.CNO=SC.CNO
     
--外连接
SELECT * 
FROM    STUDENT LEFT join SC ON STUDENT.SNO=SC.SNO 
ORDER BY CNO
--LEFT JOIN
--INNER OUTER可省略
SELECT * from T1 JOIN T2 ON B=C
SELECT * from T1 LEFT JOIN T2 ON B=C
SELECT * from T1 RIGHT JOIN T2 ON B=C
SELECT * from T1 FULL JOIN T2 ON B=C
SELECT * from T1 CROSS JOIN T2 