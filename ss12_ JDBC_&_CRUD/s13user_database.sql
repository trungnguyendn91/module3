drop database if exists ss13_JDBC_TRANSACTION ;
CREATE DATABASE ss13_JDBC_TRANSACTION;
USE ss13_JDBC_TRANSACTION;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);
insert into users( name, email, country) value('Minh','minh@codegym.vn','Việt Nam');



DELIMITER $$
-- Hiển thị danh sách-- 
CREATE PROCEDURE display_user(IN user_id INT)

BEGIN

    SELECT *

    FROM users;

    END$$

DELIMITER ;


-- Sửa thông tin theo id danh sách-- 
DELIMITER $$
CREATE PROCEDURE edit_user(IN user_name varchar(50),in user_email varchar(50),in user_country varchar(50),in user_id int )

BEGIN

    update users

    set `name`= user_name,
    email = user_email,
    country = user_country
    
    where id = user_id;

    END$$

DELIMITER ;


-- Xóa thông tin theo id danh sách-- 
DELIMITER $$
CREATE PROCEDURE delete_user(in user_id int )

BEGIN

    delete from users
    
    where id = user_id;

    END$$

DELIMITER ;
