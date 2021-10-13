-- 1
select * from Student inner join marks_sem1 on Student.rollno=marks_sem1.rollno;

-- 2
select Student.name, marks_sem1.sports from Student 
    inner join marks_sem1 on Student.rollno=marks_sem1.rollno;

--3
select Student.name, marks_sem1.math, Student.rollno from Student 
    inner join marks_sem1 on Student.rollno=marks_sem1.rollno where 
    Student.cid in (select cid from Campus where law=1);

--4
select * from Campus left join Student on Campus.cid=Student.cid;
select * from Campus right join Student on Campus.cid=Student.cid;