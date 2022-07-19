use quan_ly_sv;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’ 
SELECT 
    *
FROM
    student
WHERE
    student_name REGEXP '^[h]';

 -- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12. 
SELECT 
    *
FROM
    class
WHERE
    MONTH(start_date) = 12;

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5. 
SELECT 
    *
FROM
    `subject`
WHERE
    credit BETWEEN 3 AND 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2
UPDATE student 
SET 
    student.class_id = 2
WHERE
    student_name = 'Hung';
SELECT 
    *
FROM
    student;

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
SELECT 
    student_name, sub_name, mark
FROM
    student s
        JOIN
    mark m ON s.student_id = m.student_id
        JOIN
    `subject` sub ON m.sub_id = sub.sub_id
ORDER BY m.mark DESC , student_name;