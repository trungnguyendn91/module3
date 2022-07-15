drop database if exists don_dat_hang;
create database don_dat_hang;
use don_dat_hang;

CREATE TABLE don_vi_dat (
    ma_dv INT AUTO_INCREMENT PRIMARY KEY,
    ten_dv VARCHAR(45),
    dia_chi VARCHAR(45),
    so_dien_thoai VARCHAR(10)
);

CREATE TABLE nguoi_dat (
    ma_nguoi_dat INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten_nguoi_dat VARCHAR(45),
    ma_dv INT,
    FOREIGN KEY (ma_dv)
        REFERENCES don_vi_dat (ma_dv)
);





CREATE TABLE nguoi_nhan (
    ma_so_nn INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten_nn VARCHAR(45),
    ma_dv INT,
    FOREIGN KEY (ma_dv)
        REFERENCES don_vi_dat (ma_dv)
);

CREATE TABLE noi_giao (
    ma_so_ddg INT AUTO_INCREMENT PRIMARY KEY,
    ten_noi_giao VARCHAR(45)
);

CREATE TABLE nguoi_giao (
    ma_nguoi_giao INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(45)
);

CREATE TABLE giao_hang (
    ma_so_pg INT AUTO_INCREMENT PRIMARY KEY,
    ngay_giao DATE,
    so_luong INT,
    don_gia DOUBLE,
    ma_nguoi_giao INT,
    ma_so_ddg INT,
    ma_so_nn INT,
    FOREIGN KEY (ma_so_nn)
        REFERENCES nguoi_nhan (ma_so_nn),
    FOREIGN KEY (ma_so_ddg)
        REFERENCES noi_giao (ma_so_ddg),
    FOREIGN KEY (ma_nguoi_giao)
        REFERENCES nguoi_giao (ma_nguoi_giao)
);




CREATE TABLE dat_hang (
    so_dat_hang INT AUTO_INCREMENT PRIMARY KEY,
    ngay_dat DATE,
    so_luong INT,
    ma_nguoi_dat INT,
    FOREIGN KEY (ma_nguoi_dat)
        REFERENCES nguoi_dat (ma_nguoi_dat)
);
CREATE TABLE hang (
    ma_hang INT AUTO_INCREMENT PRIMARY KEY,
    ten_hang VARCHAR(45),
    don_vi_tinh VARCHAR(45),
    mo_ta_hang VARCHAR(45),
    ma_so_pg INT,
    so_dat_hang INT,
    FOREIGN KEY (ma_so_pg)
        REFERENCES giao_hang (ma_so_pg),
    FOREIGN KEY (so_dat_hang)
        REFERENCES dat_hang (so_dat_hang)
);