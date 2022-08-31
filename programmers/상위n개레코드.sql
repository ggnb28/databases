-- 동물 보호소에 가장 먼저 들어온 동물의 이름을 조회하는 SQL
-- ※ 보호소에 가장 먼저 들어온 동물은 한 마리인 경우만 테스트 케이스로 주어집니다.
SELECT NAME FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1;