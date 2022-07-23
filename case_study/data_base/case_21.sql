use furama_controller;

-- 21.	Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”. 

drop view if exists v_nhan_vien;

-- CREATE VIEW v_dia_chi_nhan_vien AS
--     SELECT 
--         nv.*
--     FROM
--         nhan_vien nv
--     WHERE
--         (nv.dia_chi LIKE '%Nguyễn Chí Thanh%');
--  CREATE VIEW v_hop_dong AS
--     SELECT 
--         hd.*
--     FROM
--         hop_dong hd
--     WHERE
--         (hd.ngay_lam_hop_dong = "2021/07/14");       

-- CREATE VIEW v_nhan_vien AS
-- select *
-- from
-- v_dia_chi_nhan_vien vdcnv
--  join v_hop_dong vhd on vdcnv.ma_nhan_vien = vhd.ma_nhan_vien
--  where date (vhd.ngay_lam_hop_dong) = "2021/07/14";
 
CREATE VIEW v_nhan_vien AS
    SELECT 
        nv.*, hd.ma_hop_dong
    FROM
        nhan_vien nv
            JOIN
        hop_dong hd ON nv.ma_nhan_vien = hd.ma_nhan_vien
    WHERE
        (nv.dia_chi LIKE '%Nguyễn Chí Thanh%')
            AND (hd.ngay_lam_hop_dong = '2021/07/14');
            
            
-- 22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu”
--  đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
UPDATE v_nhan_vien 
SET 
    v_nhan_vien.dia_chi = REPLACE(
		dia_chi,
        'Nguyễn Chí Thanh',
        'Liên Chiểu')
 
 -- 23.	Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó 
 -- với ma_khach_hang được truyền vào như là 1 tham số của sp_xoa_khach_hang.
 
 



