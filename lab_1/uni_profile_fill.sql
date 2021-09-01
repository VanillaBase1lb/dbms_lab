USE university_profile;

INSERT INTO Student (
    name, rollno, age, math, sci, eng, social, sports
)
VALUES ('dwayne', 33, 21, 98, 94, 91, 96, 55),
    ('john', 58, 18, 70, 87, 77, 98, 67),
    ('dave', 27, 22, 54, 68, 98, 96, 77),
    ('randy', 56, 19, 69, 75, 65, 67, 98),
    ('kane', 11, 22, 86, 95, 52, 57, 73),
    ('tom', 50, 21, 76, 84, 62, 74, 81)
;

INSERT INTO Campus (
    name, cid, loc, cap, law, engg, buss
)
VALUES ('mec', 101, 'hyd', 1000, 1, 1, 1),
    ('muc', 104, 'mad', 2000, 0, 1, 1),
    ('mgt', 107, 'bom', 1500, 1, 0, 1)
;