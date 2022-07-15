use quan_ly_sv;
-- hiển thị danh sách học viên  
select * 
from student;
 -- hiển thị danh sách học viên đang theo học
select * 
from student 
where `status` = true;

--  Sử dụng điều kiện where Credit < 10 và from Subject để lấy ra danh sách các môn học có thời gian học nhỏ hơn 10
select *
from `subject`
where credit < 10; 

-- Sử dụng câu lệnh Join và where để hiển thị danh sách học viên lớp A1
select s.student_id, s.student_name, c.class_name
from student s join class c on s.class_id = c.class_id -- câu lệnh join 2 bảng student và class
where c.class_name = "A1"; -- sử dụng  where c.class_name = "A1"; để  hiển thị danh sách học viên lớp A1 

-- hiển thị điểm thi môn CF của học viên
select s.student_id, s.student_name, sub.sub_name, m.mark
from student s join mark  m on s.student_id = m.student_id join `subject` sub on m.sub_id = sub.sub_id -- hiển thị điểm thi đang có của học viên
where sub.sub_name = "CF"; 