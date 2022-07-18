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
    nv.ho_ten AS "tên nhân viên",
    kh.ho_ten AS "tên khác hàng",
    kh.so_dien_thoai AS "số điện thoại khách hàng",
    dv.ten_dich_vu AS "tên dịch vụ",
    SUM(hdct.so_luong) AS 'số lượng dịch vụ',
    hd.tien_dat_coc AS "tiền đặt cọc"
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


