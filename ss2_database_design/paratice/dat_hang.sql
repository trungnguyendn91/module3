drop database if exists don_dat_hang;
create database don_dat_hang;
use don_dat_hang;

create table don_vi_dat(
ma_dv int auto_increment primary key,
ten_dv varchar (45),
dia_chi varchar (45),
so_dien_thoai varchar (10)
);

create table nguoi_dat(
ma_nguoi_dat int auto_increment primary key,
ho_ten_nguoi_dat varchar(45),
ma_dv int,
foreign key(ma_dv) references don_vi_dat(ma_dv)
);





create table nguoi_nhan( 
ma_so_nn int auto_increment primary key,
ho_ten_nn varchar(45),
ma_dv int,
foreign key (ma_dv) references don_vi_dat(ma_dv)
);

create table noi_giao(
ma_so_ddg int auto_increment primary key,
ten_noi_giao varchar(45)
);

create table nguoi_giao(
ma_nguoi_giao int auto_increment primary key,
ho_ten varchar(45)
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




create table dat_hang(
so_dat_hang int auto_increment primary key,
ngay_dat date,
so_luong int,

ma_nguoi_dat int,
foreign key (ma_nguoi_dat) references nguoi_dat(ma_nguoi_dat)

);
create table hang(
ma_hang int auto_increment primary key,
ten_hang varchar (45),
don_vi_tinh varchar (45),
mo_ta_hang varchar (45),
ma_so_pg int,
so_dat_hang int,
foreign key (ma_so_pg) references giao_hang(ma_so_pg),
foreign key (so_dat_hang) references dat_hang(so_dat_hang)
);