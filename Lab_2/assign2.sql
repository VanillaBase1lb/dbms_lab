USE university_profile;

-- 1
select name, rollno, datediff(curdate(), dob)/365.25 as age from Student order by age desc;

-- 2
select gender, count(*) from Student where
    datediff(curdate(), dob)/365.25 > 20 group by gender;
    
-- 3
select count(*) from Student where math>(
    select avg((math+sci+eng+social+sports)/5) as avg_student from Student);
    
-- 4
select (select count(*) from Campus where pincode REGEXP '[56].....')
    /(select count(*) from Campus where pincode REGEXP '[34].....') as ratio;
    
-- 5
select * from Student group by (math+sci+eng+social+sports) 
    order by (math+sci+eng+social+sports) desc limit 1,1;
    
-- 6
select name, rollno, (math+sci+eng+social+sports)/5 as avg_marks, 
    if((select avg((math+sci+eng+social+sports)/5) from Student)>
    (math+sci+eng+social+sports)/5, 'low', 'high') as score_status from Student group by rollno;