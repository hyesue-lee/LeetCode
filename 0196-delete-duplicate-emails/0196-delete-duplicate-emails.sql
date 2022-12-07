/*중복된 이메일 삭제 */

# 방법1.
# DELETE FROM Person 
# WHERE id NOT IN
# (   
#     SELECT min_id 
#     FROM (
#             SELECT email,min(id) min_id
#             FROM Person 
#             GROUP BY email 
#         ) A
# )

# 방법2. DELETE with JOIN 

DELETE A -- A테이블 기준으로 삭제 
FROM person A 
JOIN person B -- B테이블과 조인 
ON A.email = B.email -- 이메일로 묶기 
WHERE A.id > B.id -- A테이블의 3번 데이터를 삭제하기 위해 규칙을 활용. (1,2번 데이터는 같거나 B.id 가 큼) 