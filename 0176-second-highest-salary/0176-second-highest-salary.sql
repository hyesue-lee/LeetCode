# Write your MySQL query statement below
-- 두번째 샐러리 순위 구하라. 없으면 null 

SELECT IF( MAX(ranking) < 2,null,salary) SecondHighestSalary
FROM (

 SELECT salary
    ,DENSE_RANK() OVER(ORDER BY salary desc) ranking 
    FROM Employee

)sub 
WHERE ranking = 2