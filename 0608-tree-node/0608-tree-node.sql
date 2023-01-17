# Write your MySQL query statement below
/*
Root: p_id값이 null
Inner: p_id값이 존재하고, 다른놈(4,5)가 본인을 p_id로 가지고 있으므로.. inner 
Leaf: P_id값은 존재하고 자신을 p_id로 가지는 값이 없음 
*/

SELECT id
, CASE WHEN p_id is null THEN 'Root'
       WHEN id IN (SELECT p_id FROM Tree) THEN 'Inner'
            ELSE 'Leaf'
   END AS type 
FROM Tree 

