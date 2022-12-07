/*중복된 이메일 삭제 */

DELETE FROM Person 
WHERE id NOT IN
(   
    SELECT min_id 
    FROM (
            SELECT email,min(id) min_id
            FROM Person 
            GROUP BY email 
        ) A
)
