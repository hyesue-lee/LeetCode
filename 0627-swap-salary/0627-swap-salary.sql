/*
성별 스왑. 남자(m)는 여자(f)로, 여자는 남자로 변경 
*/

UPDATE salary 
SET sex =
IF(sex = 'm','f','m')