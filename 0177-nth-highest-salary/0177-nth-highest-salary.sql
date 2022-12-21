CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN 
  SET N = N-1; 
  RETURN 
  (
      SELECT distinct salary
      FROM employee
      ORDER BY salary DESC 
      LIMIT N,1   -- N번째 이후 1번째 row 
  );
END