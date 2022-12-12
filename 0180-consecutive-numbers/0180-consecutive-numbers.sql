# Write your MySQL query statement below

SELECT IF(num1=num2 and num2=num3, num1, null) ConsecutiveNums
FROM 
    ( SELECT A.num num1, B.num num2, C.num num3 
        FROM Logs A
        JOIN logs B
        ON A.id = B.id + 1
        JOIN logs C
        ON A.id = C.id + 2
       ) sub
 GROUP BY ConsecutiveNums
 HAVING ConsecutiveNums is not null 

# select A.num num1, B.num num2, C.num num3 
#         from Logs A
#         JOIN logs B
#         ON A.id = B.id + 1
#         JOIN logs C
#         ON A.id = C.id + 2