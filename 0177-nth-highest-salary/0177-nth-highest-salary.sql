    CREATE FUNCTION getNthHighestSalary(N INT) 
    RETURNS INT
    BEGIN
    RETURN (
            SELECT IF(COUNT(sub.salary) >= N, MIN(salary), null)
            FROM (
                SELECT DISTINCT salary
                FROM employee
                ORDER BY salary desc 
                limit N 
            )sub 
    );
    END

