create database student_manager;-- tao database 
use student_manager;-- chi dinh DB lam viec 
create table student (-- tao bang 
id_student int auto_increment,
name_student varchar(50),
date_of_birth date,
primary key (id_student)
);
-- them thong tin vao bang 
insert into student(name_student,date_of_birth) value("Trong Nhan", "1994-04-22"),("Van Phu","1992-12-22");
select*from student;-- xem du lieu 
alter table student add class text;-- tao cot moi
set sql_safe_updates= 0; -- cho phep thay doi 
update student set student.class = "C01" 
where name_student ="Trong Nhan";
update student set sutdent.class = "c03"
where name_student = "Van Phu";
set sql_safe_updates= 1; -- tat thay doi  
select*from student;
create table teacher (
id_teacher int auto_increment,
name_teacher varchar(50),
age int,
primary key (id_teacher)
);
insert into teacher(name_teacher,age) value ("HaiTT", "22"),("ChanhTV", "36");
alter table teacher add country text;

update teacher set country="Quang Nam"
where name_teacher = "ChanhTV";
     
select*from teacher;
drop table teacher;
