USE university_profile;

-- 1
SELECT cid FROM Campus WHERE law=1;

-- 2
SELECT name, rollno, age, math, sci, sports FROM Student 
    WHERE name='dave';

-- 3
SELECT name, rollno FROM Student WHERE math>80 OR sci>80;

-- 4
SELECT DISTINCT social FROM Student;

-- 5
SELECT COUNT(*) FROM Student WHERE eng<70;

-- 6
SELECT NAME, rollno FROM Student WHERE 
    math+sci=(SELECT MAX(math+sci) FROM Student);

-- 7
SELECT loc FROM Campus WHERE engg=0;

-- 8
SELECT (SELECT SUM(cap) FROM Campus WHERE engg=1)/(
    SELECT SUM(cap) FROM Campus WHERE engg=0);
    
-- 9
SELECT * FROM Student WHERE math>70 AND sci>70 AND eng>70
    AND social>70 AND sports>70;
    
-- 10
SELECT COUNT(*) FROM Student WHERE rollno BETWEEN 1 AND 20;
SELECT COUNT(*) FROM Student WHERE rollno BETWEEN 21 AND 40;
SELECT COUNT(*) FROM Student WHERE rollno BETWEEN 41 AND 60;
SELECT COUNT(*) FROM Student WHERE rollno BETWEEN 61 AND 80;
SELECT COUNT(*) FROM Student WHERE rollno BETWEEN 81 AND 100;