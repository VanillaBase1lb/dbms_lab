use university_profile;

--1
select * from Student where team='R'
union
select * from Student where gender='F';

--2
select team, count(rollno) from Student group by team;

--3
select team, avg(math) from Student where gender='M' group by team;

--4
select * from Student group by team, gender order by team asc, gender desc;

--5
select team, avg(sci) from Student group by team order by avg(sci) desc limit 2;