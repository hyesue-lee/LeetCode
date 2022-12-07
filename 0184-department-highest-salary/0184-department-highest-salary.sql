/*
가장높은 샐러리. 부서별. Department, Employee, Salary 
테이블: Employee / Department pk: id 
필터: 부서별, max salary 
정렬: any order 
*/

SELECT D.name Department
, E.name Employee
, E.salary Salary 
FROM employee E
JOIN department D
ON E.departmentId = D.id
WHERE (D.id, E.salary) IN 
    ( SELECT departmentId, MAX(salary)
        FROM employee
        GROUP BY departmentId
    )

