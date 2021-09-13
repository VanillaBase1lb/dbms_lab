use university_profile;

alter table Student add gender char(1), add team char(1);

alter table Student add dob date, drop column age;

alter table Student add yjoin integer;

alter table Student modify team char(1) after rollno;
alter table Student modify gender char(1) after rollno;
alter table Student modify yjoin integer after rollno;
alter table Student modify dob date after rollno;

update Student
    set dob='2000-01-09',yjoin=2019,gender='M',team='R' where rollno=33;
update Student
    set dob='2002-03-21',yjoin=2019,gender='M',team='W' where rollno=58;
update Student
    set dob='1999-09-11',yjoin=2018,gender='M',team='A' where rollno=27;
update Student
    set dob='2001-04-28',yjoin=2019,gender='M',team='R' where rollno=56;
update Student
    set dob='1999-02-13',yjoin=2018,gender='M',team='G' where rollno=11;
update Student
    set dob='2000-11-01',yjoin=2019,gender='M',team='W' where rollno=50;

INSERT INTO Student (
    name, rollno, dob, yjoin, gender, team, math, sci, eng, social, sports
)
VALUES ('carol', 7, '2000-06-19', 2018, 'F', 'W', 78, 99, 45, 56, 88),
    ('wanda', 21, '2001-08-10', 2019, 'F', 'R', 42, 73, 59, 63, 65),
    ('natasha', 52, '2001-06-19', 2019, 'F', 'A', 83, 86, 89, 91, 99),
    ('gamora', 34, '2001-06-19', 2018, 'F', 'G', 84, 93, 79, 94, 85),
    ('jean', 46, '2000-06-19', 2019, 'F', 'G', 98, 97, 84, 87, 72);

alter table Campus add column pincode char(6);

update Campus
    set pincode='500043' where loc='hyd';
update Campus
    set pincode='600012' where loc='mad';
update Campus
    set pincode='400076' where loc='bom';
    
alter table Campus modify pincode char(6) after loc;

insert into Campus (
    name, cid, loc, pincode, cap, law, engg, buss
)
VALUES ('mdc', 106, 'pun', '411021', 1700, 0, 1, 1),
    ('mdd', 109, 'del', '110001', 1400, 1, 1, 0),
    ('mvc', 110, 'vel', '631001', 1400, 1, 1, 1),
    ('mbd', 113, 'bgl', '560002', 800, 0, 1, 1);