/* 가장높은 급여인 직원을 찾아라. 각 부서 별로  */
/*RANK 사용하기*/

SELECT department
    ,employee
    ,salary
FROM(
    SELECT D.name department
        , E.name employee
        , E.salary salary 
        , DENSE_RANK() OVER(PARTITION BY D.id ORDER BY E.salary DESC) salary_rank

    FROM employee E 
        JOIN department D
        ON E.departmentId = D.id 
    
 )sub
 WHERE sub.salary_rank = 1
