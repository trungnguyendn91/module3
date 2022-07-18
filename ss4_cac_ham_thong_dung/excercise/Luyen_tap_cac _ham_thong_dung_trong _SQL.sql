use quan_ly_sv;

--  Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.

SELECT 
    *
FROM
    `subject` s
WHERE
    credit = (SELECT 
            MAX(credit)
        FROM
            `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất. 
SELECT 
    sub.*,
    mark as "điểm cao nhất"
FROM
    mark m
        RIGHT JOIN
    `subject` sub ON m.sub_id = sub.sub_id
WHERE
    m.mark = (SELECT 
            MAX(mark.mark)
        FROM
            mark);
            
-- cách 2
SELECT 
    s.*, mark
FROM
    `subject` s
        JOIN
    mark m ON s.sub_id = m.sub_id
ORDER BY mark DESC
LIMIT 1;

--  Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT 
    s.*, AVG(m.mark) as "điểm trung bình"
FROM
    student s
        JOIN
    Mark m ON s.student_id = m.student_id
GROUP BY s.student_id , s.student_name
ORDER BY m.mark DESC;
 