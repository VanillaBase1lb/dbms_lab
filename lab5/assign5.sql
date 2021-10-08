use university_profile;

-- 1
create table marks_sem1 like Student;
insert into marks_sem1 select * from Student order by rollno asc;
alter table marks_sem1 drop column name, drop column dob, 
    drop column yjoin, drop column gender, drop column team;
alter table marks_sem1 modify column rollno integer primary key;

-- 2
create table faculty(name varchar(20), fid char(4) primary key, subject varchar(20));
insert into faculty values ('kakashi', '4003', 'math'), ('guy', '5002', 'sports'),
     ('kurenai', '5038', 'eng');

-- 4
alter table Campus add primary key (cid);

-- 3
create table sem1(subj_id char(4) primary key, subject varchar(20), fid char(4),
     cap integer, campus integer, foreign key (fid) references faculty(fid),
     foreign key (campus) references Campus(cid));
insert into sem1 values ('101', 'math', '4003', 60, 101), 
    ('102', 'sports', '5002', 70, 101), ('105', 'eng', '5038', 60, 104);

-- 5
alter table Student drop index rollno, drop column math, drop column sci,
     drop column eng, drop column social, drop column sports,
     alter column dob set default '2001-01-01', modify column yjoin year default 2019,
     alter column gender set default 'M', alter column team set default 'R',
     add foreign key (rollno) references marks_sem1(rollno), add column cid integer,
     add foreign key (cid) references Campus(cid);

update Student set cid=109 where rollno=33;
update Student set cid=101 where rollno=58;
update Student set cid=110 where rollno=27;
update Student set cid=104 where rollno=56;
update Student set cid=104 where rollno=11;
update Student set cid=101 where rollno=50;
update Student set cid=113 where rollno=7;
update Student set cid=107 where rollno=21;
update Student set cid=109 where rollno=52;
update Student set cid=109 where rollno=34;
update Student set cid=110 where rollno=46;