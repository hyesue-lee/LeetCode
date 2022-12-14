/* 윈도우 함수 사용하기 */

SELECT distinct num ConsecutiveNums 
FROM(
    SELECT 
         num
        ,LAG(num) OVER( ORDER BY id) AS lag1
        ,LAG(num,2) OVER( ORDER BY id) AS lag2
        FROM logs
)sub
WHERE sub.num = sub.lag1 AND sub.lag1 = sub.lag2


