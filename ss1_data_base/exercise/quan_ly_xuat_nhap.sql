drop database if exists quan_ly_xuat_nhap;

create database quan_ly_xuat_nhap;
use quan_ly_xuat_nhap;



CREATE TABLE phieu_xuat (
    so_phieu_xuat INT AUTO_INCREMENT PRIMARY KEY,
    ngay_xuat DATE
);

CREATE TABLE vat_tu (
    ma_vat_tu INT AUTO_INCREMENT PRIMARY KEY,
    ten_vat_tu VARCHAR(50)
);

CREATE TABLE chi_tiet_px (
    so_phieu_xuat INT AUTO_INCREMENT,
    ma_vat_tu INT,
    don_gia_xuat DOUBLE,
    so_luong_xuat INT,
    PRIMARY KEY (so_phieu_xuat , ma_vat_tu),
    FOREIGN KEY (so_phieu_xuat)
        REFERENCES phieu_xuat (so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE phieu_nhap (
    so_phieu_nhap INT AUTO_INCREMENT PRIMARY KEY,
    ngay_nhap DATE
);

CREATE TABLE chi_tiet_phieu_nhap (
    ma_vat_tu INT,
    so_phieu_nhap INT,
    don_gia_nhap DOUBLE,
    so_luong_nhap INT,
    PRIMARY KEY (ma_vat_tu , so_phieu_nhap),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap)
);


CREATE TABLE nha_cung_cap (
    ma_nha_cc VARCHAR(45) PRIMARY KEY,
    ten_nha_cc VARCHAR(45),
    dia_chi VARCHAR(45),
    so_dien_thoai VARCHAR(10)
);

CREATE TABLE don_dh (
    so_dat_hang INT AUTO_INCREMENT PRIMARY KEY,
    ngay_dat_hang DATE,
    ma_nha_cc VARCHAR(45),
    FOREIGN KEY (ma_nha_cc)
        REFERENCES nha_cung_cap (ma_nha_cc)
);

CREATE TABLE so_dien_thoai_ncc (
    so_dien_thoai VARCHAR(10) PRIMARY KEY,
    ma_nha_cc VARCHAR(45),
    FOREIGN KEY (ma_nha_cc)
        REFERENCES nha_cung_cap (ma_nha_cc)
);
CREATE TABLE chi_tiet_don_dh (
    ma_vat_tu INT,
    so_dat_hang INT,
    PRIMARY KEY (ma_vat_tu , so_dat_hang),
    FOREIGN KEY (so_dat_hang)
        REFERENCES don_dh (so_dat_hang),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);