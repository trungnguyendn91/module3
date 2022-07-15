drop database if exists quan_ly_sv;
create database quan_ly_sv;
use quan_ly_sv;

CREATE TABLE class (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(20),
    start_date DATE,
    `status` BIT(1)
);

CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(45),
    address VARCHAR(45),
    phone_number VARCHAR(20),
    `status` BIT(10),
    class_id INT,
    FOREIGN KEY (class_id)
        REFERENCES class (class_id)
);
CREATE TABLE `subject` (
    sub_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(45),
    credit INT,
    `status` BIT(1)
);

CREATE TABLE mark (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
	sub_id INT,
    student_id INT,
    mark INT,
    exam_times INT,
    FOREIGN KEY (student_id)
        REFERENCES student (student_id),
    FOREIGN KEY (sub_id)
        REFERENCES `subject` (sub_id)
);
INSERT INTO Class
VALUES 
(1, 'A1', '2008-12-20', 1),
(2, 'A2', '2008-12-22', 1),
(3, 'B3', current_date, 0);

INSERT INTO Student (student_name, address, phone_number, `status` , class_id)
VALUES 
('Hung', 'Ha Noi', '0912113113', 1, 1),
('Manh', 'HCM', '0123123123', 0, 2);
INSERT INTO Student (student_name, address, `status` , class_id)
VALUES 
('Hoa', 'Hai phong', 1, 1);
INSERT INTO Subject
VALUES 
(1, 'CF', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);
INSERT INTO mark (sub_id, student_id, mark, exam_times)
VALUES 
(1, 1, 8, 1),
(1, 2, 10, 2),
(2, 1, 12, 1);