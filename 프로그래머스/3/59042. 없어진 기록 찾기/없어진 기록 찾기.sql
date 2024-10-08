-- 동물 보호소 내 동물 정보 / 동물보호소에서 입양보낸 동물
-- 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의
-- ID과 이름을 ID순으로 조회하는 SQL
SELECT ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME
FROM ANIMAL_OUTS LEFT JOIN ANIMAL_INS 
ON ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
WHERE ANIMAL_INS.ANIMAL_ID IS NULL
ORDER BY 1;