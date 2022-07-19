use furama_controller;

-- 11.	Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” 
-- và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.

SELECT 
    dvdk.ten_dich_vu_di_kem
FROM
    loai_khach lk
        JOIN
    khach_hang kh ON lk.ma_loai_khach_hang = kh.ma_loai_khach_hang
        JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
WHERE
    lk.ten_loai_khach_hang = 'Diamond'
        AND (kh.dia_chi LIKE '%Vinh'
        OR kh.dia_chi LIKE '%Quảng Ngãi');

-- 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu, 
-- so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), 
-- tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 
-- nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
SELECT 
    hd.ma_hop_dong,
    nv.ho_ten AS "ten_nhan_vien",
    kh.ho_ten AS "ten_khach_hang",
    kh.so_dien_thoai AS "so_dien_thoai_khach_hang",
    dv.ten_dich_vu AS "ten_dich_vu",
    SUM(hdct.so_luong) AS 'so_luong_dich_vu',
    hd.tien_dat_coc AS "tien_dat_coc"
FROM
    hop_dong hd
        LEFT JOIN
    nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
        LEFT JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
WHERE
    YEAR(hd.ngay_lam_hop_dong) = '2020'
        AND QUARTER(hd.ngay_lam_hop_dong) = '4'
        AND  hd.ma_hop_dong
        NOT IN
        (
        SELECT
    hd.ma_hop_dong
    FROM
    hop_dong hd
      WHERE YEAR(hd.ngay_lam_hop_dong) = '2021'
        AND QUARTER(hd.ngay_lam_hop_dong) = '1'
      OR QUARTER(hd.ngay_lam_hop_dong) = '2'
            group by hd.ma_hop_dong
        )
        GROUP BY hd.ma_hop_dong;
        
--  13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).ư
SELECT 
    dvdk.*, SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
        JOIN
    hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
GROUP BY dvdk.ma_dich_vu_di_kem
HAVING so_luong_dich_vu_di_kem = (SELECT 
        MAX(so_luong)
    FROM
        hop_dong_chi_tiet)
ORDER BY dvdk.ma_dich_vu_di_kem;

-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất.
--  Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung 
-- (được tính dựa trên việc count các ma_dich_vu_di_kem).
SELECT 
    hd.ma_hop_dong,
    ldv.ten_loai_dich_vu,
    dvdk.ten_dich_vu_di_kem,
    COUNT(hdct.ma_dich_vu_di_kem) AS so_lan_su_dung
FROM
    dich_vu dv
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem  having so_lan_su_dung = 1;


-- 15.	Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, 
-- ten_bo_phan, so_dien_thoai, dia_chi mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.

select  nv.ma_nhan_vien, nv.ho_ten, td.ten_trinh_do, bp.ten_bo_phan, nv.so_dien_thoai, nv.dia_chi, count(hd.ma_hop_dong) as "so_hop_dong_ky_duoc"
from
nhan_vien nv
left join trinh_do td on nv.ma_trinh_do = td.ma_trinh_do
left join bo_phan bp on nv.ma_bo_phan = bp.ma_bo_phan
left join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
where (year(ngay_lam_hop_dong)= 2020  or year(ngay_lam_hop_dong)=2021)
group by hd.ma_nhan_vien
having count(hd.ma_hop_dong)<=3; 

