/* 가장높은 급여인 직원을 찾아라. 각 부서 별로  */


SELECT department
    ,employee
    ,high_salary salary
FROM(
    SELECT D.name department
        , E.name employee
        , E.salary salary 
        , MAX(E.salary) OVER(PARTITION BY D.id) high_salary

    FROM employee E 
        JOIN department D
        ON E.departmentId = D.id 
 )sub
 WHERE sub.salary = sub.high_salary
 
 
