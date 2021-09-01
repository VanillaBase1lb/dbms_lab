CREATE DATABASE university_profile;
USE university_profile;
CREATE TABLE Student (
    name VARCHAR(20),
    rollno INTEGER UNIQUE,
    age INTEGER,
    math INTEGER,
    sci INTEGER,
    eng INTEGER,
    social INTEGER,
    sports INTEGER
);
CREATE TABLE Campus (
    name VARCHAR(20),
    cid INTEGER UNIQUE,
    loc VARCHAR(20),
    cap INTEGER,
    law BOOLEAN,
    engg BOOLEAN,
    buss BOOLEAN
);