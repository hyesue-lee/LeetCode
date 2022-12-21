CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN 
  (
            SELECT DISTINCT salary -- 존재하지않으면 어차피 null이라 별도 처리 안해줘도 됨.
     
            FROM 
            (
				SELECT salary
				,DENSE_RANK() OVER(ORDER BY SALARY DESC) AS drank
				FROM employee 
            )sub 
            WHERE sub.drank = N
              
  );
END