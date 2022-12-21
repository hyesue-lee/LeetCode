    CREATE FUNCTION getNthHighestSalary(N INT) 
    RETURNS INT
    BEGIN
    RETURN (
            SELECT DISTINCT salary
            FROM 
            (
				SELECT salary,
				DENSE_RANK() OVER(ORDER BY SALARY DESC) AS drank  
				FROM employee 
            ) sub 
            WHERE sub.drank = N
    );
    END

