drop database if exists student_manager;

create database student_manager;-- tao database 
use student_manager;-- chi dinh DB lam viec 
CREATE TABLE student (
    id_student INT AUTO_INCREMENT,
    name_student VARCHAR(50),
    date_of_birth DATE,
    PRIMARY KEY (id_student)
);
-- them thong tin vao bang 
insert into student(name_student,date_of_birth) value("Trong Nhan", "1994-04-22"),("Van Phu","1992-12-22");
SELECT 
    *
FROM
    student;-- xem du lieu 
alter table student add class text;-- tao cot moi
set sql_safe_updates= 0;-- cho phep thay doi 
UPDATE student 
SET 
    student.class = 'C01'
WHERE
    name_student = 'Trong Nhan';
UPDATE student 
SET 
    sutdent.class = 'c03'
WHERE
    name_student = 'Van Phu';
set sql_safe_updates= 1;-- tat thay doi  
SELECT 
    *
FROM
    student;
CREATE TABLE teacher (
    id_teacher INT AUTO_INCREMENT,
    name_teacher VARCHAR(50),
    age INT,
    PRIMARY KEY (id_teacher)
);
insert into teacher(name_teacher,age) value ("HaiTT", "22"),("ChanhTV", "36");
alter table teacher add country text;

UPDATE teacher 
SET 
    country = 'Quang Nam'
WHERE
    name_teacher = 'ChanhTV';
     
SELECT 
    *
FROM
    teacher;
drop table teacher;
