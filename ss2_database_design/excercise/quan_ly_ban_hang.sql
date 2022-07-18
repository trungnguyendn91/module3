drop database if exists quan_ly_ban_hang;
create database quan_ly_ban_hang;
use quan_ly_ban_hang;

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(45),
    customer_age INT
);
CREATE TABLE `order` (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_total_price DOUBLE,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
);
CREATE TABLE product (
    product_id INT AUTO_INCREMENT KEY,
    product_name VARCHAR(45),
    product_price DOUBLE
);
CREATE TABLE order_detail (
    order_id INT,
    product_id INT,
    order_quantity INT,
    PRIMARY KEY (order_id , product_id),
    FOREIGN KEY (order_id)
        REFERENCES `order` (order_id),
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
);
INSERT INTO customer ( customer_name, customer_age) 
VALUES 
('Minh Quan', '10'),
('Ngoc Oanh', '20'),
('Hong Ha', '50');
INSERT INTO `order` ( customer_id, order_date) 
VALUES 
('1', '2006-03-21'),
('2', '2006-03-23'),
('1', '2006-03-13');
INSERT INTO product ( product_name, product_price) 
VALUES 
('May Giat', '3'),
('Tu Lanh', '5'),
('Dieu Hoa', '7'),
('Quat', '1'),
('Bep Dien', '2');
INSERT INTO order_detail (order_id, product_id, order_quantity) 
VALUES 
('1', '1', '3'),
('1', '3', '7'),
('1', '4', '2'),
('2', '1', '1'),
('3', '1', '8'),
('2', '5', '4'),
('2', '3', '3');