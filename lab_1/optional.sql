USE university_profile;

-- 11
SELECT name, rollno FROM Student WHERE math+sci+eng+social+sports=(
    SELECT MAX(math+sci+eng+social+sports) FROM Student);
    
-- 12
SELECT name FROM Student WHERE SUBSTRING(name, 2, 1)='a';

-- 13
SELECT name, math FROM Student ORDER BY math ASC;