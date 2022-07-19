drop database if exists demo;

create database demo;
use demo;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    products_code VARCHAR(45),
    products_name VARCHAR(45),
    products_price INT,
    products_amount INT,
    products_description VARCHAR(100),
    products_status VARCHAR(100)
);

insert into products (products_code ,products_name ,products_price ,products_amount ,products_description ,products_status) value
("s8", "samsung galaxy",100000, 100, "smar tphone", "new"),
("s7", "samsung galaxy",100000, 100, "smart phone", "new"),
("s9", "samsung galaxy",100000, 100, "smart phone", "new"),
("ultra", "samsung",100000, 100, "smart phone", "new"),
("note8", "samsung",100000, 100, "smartphone", "new"),
("s8 ultra", "samsung galaxy",100000, 100, "smart phone", "new"),
("Redmi Not9", "Xiaomi",100000, 100, "smartphone", "new"),
("IP13", "Iphone 13 ProMax",100000, 100, "Smart phone", "new");

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục) --  
CREATE UNIQUE INDEX i_products_code ON products(products_code);
drop index i_products_code on products;

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)--  
CREATE INDEX i_products ON products (id, products_code); 
drop index i_products_code on products;

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào 
explain select * from products where  products_code = "s9" ;
explain select products_name, products_price 
		from 
			products 
		where products_price = 100000 and  products_name = "samsung" 
		group by products_name;


-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.--
drop view if exists w_products;-- xóa view--  

CREATE VIEW w_products AS
    SELECT 
        products_code,
        products_name,
        products_price,
        products_status
    FROM
        products;
        
set sql_safe_updates =0;

-- Sửa đổi view 
create or replace view w_products as
	select 
		products_code, 
		products_name, 
        products_price, 
        products_status, 
        producst_amount
    from products;


-- Tiến hành xoá view 
drop view w_products;

select  * from w_products;


-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product


delimiter $$
create procedure find_info_product_by_id(in id int)
begin
select p.id, p.products_code, p.products_name, p.products_amount, p.products_status
from products p
where p.id = id;
end $$
delimiter ;

call find_info_product_by_id(4)

-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter $$
create procedure update_products (in id int,  
	`code` VARCHAR(45),
    `name` VARCHAR(45),
    price INT,
    amount INT,
    `description` VARCHAR(100),
    `status` VARCHAR(100))
begin
	set sql_safe_updates =0;
	update products 
		set products_code = `code`, 
			products_name = `name`,
			products_price = price,
            products_amount = amount,
            products_description = `description`, 
            products_status = `status`
	where id = id;
    set sql_safe_updates =1;
end $$
delimiter ;
call update_products(3,'s10',"Samsung galaxy note 10",11,12,"smart pbone", "second hand");


-- Tạo store procedure xoá sản phẩm theo id

delimiter $$
create procedure delete_products(in id int)
begin
delete from products p
where p.id = id;
end $$
delimiter ;
 call delete_products(2)
-- Tạo store procedure thêm một sản phẩm mới

delimiter $$
create procedure add_products ( products_code varchar(45) ,products_name varchar(45) ,
products_price int  ,products_amount int ,products_description varchar(100) ,products_status  varchar(45))
begin
insert into products(products_code ,products_name ,products_price ,products_amount ,products_description ,products_status) 
value
(new_code, new_name, new_price, new_amount, new_description, new_status);
end $$
delimiter ;
call add_products (8,"IP13px","Iphone 13 pro max",2000000,20,"Apple", "new");
