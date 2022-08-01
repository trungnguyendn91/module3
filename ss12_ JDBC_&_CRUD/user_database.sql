drop database if exists ss12_JDBC_CRUD ;
CREATE DATABASE ss12_JDBC_CRUD;
USE ss12_JDBC_CRUD;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);
insert into users( name, email, country) value('Minh','minh@codegym.vn','Việt Nam');