# Write your MySQL query statement below
/*rules
점수는 랭크된다 높은에서 낮은순으로
만약에 2개이상이 동점이면 (tie )같은 랭킹값 가짐 == dens_rank 
동점이후, 다음 랭킹숫자는 연이은 정수값. 즉, 랭크사이에 구멍없다.
정렬: 스코어 내림차순 정렬 (높은순) 
*/

SELECT score 
, DENSE_RANK() OVER(ORDER BY score DESC) AS 'rank' 
FROM Scores