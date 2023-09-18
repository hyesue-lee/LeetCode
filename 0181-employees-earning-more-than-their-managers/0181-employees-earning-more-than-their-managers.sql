# Write your MySQL query statement below
# 매니저보다 많이 버는 직원 조회 
# no order by 

SELECT e.name Employee
FROM Employee e 
    JOIN Employee m 
    ON e.managerId = m.id
WHERE e.salary > m.salary 

# JOIN RESULT
# 1 joe 7   / 3 sam 6 
# 2 henry 8 / 4 max 9 