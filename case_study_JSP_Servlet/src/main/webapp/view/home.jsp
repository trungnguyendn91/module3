<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/4/2022
  Time: 9:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Trang chủ</title>
    <link rel="stylesheet" href="\bootstrap-5.0.2-dist\css\bootstrap.min.css">
   <style>
        #sticky {
            /*position: relative;*/
            /*position: sticky;*/
            /*position: -webkit-sticky;*/
            /*left: 0;*/
            position: fixed;
            top:150px;
            width: 1300px;
            margin: auto;
        }
    </style>

</head>
<body>

<div class="row" style="margin: auto; background-color: #0dcaf0" >
    <div class="col-lg-3 d-flex justify-content-center">
        <img src="\img\logo.png"/>
    </div>
    <div class="col-lg-3">
        <div class="catalog-widget-inside" style="visibility: visible;">
            <a href="https://www.tripadvisor.com/Hotel_Review-g298085-d302750-Reviews-Furama_Resort_Danang-Da_Nang_Quang_Nam_Province.html" target="_blank">
                <div class="widget-tripadvisor">
                    <div class="inside">
                        <div class="widget-tripadvisor-logo"><img src="https://smartdata.tonytemplates.com/bestel/wp-content/uploads/2018/05/widget-tripadvisor-logo.png" alt=""></div>
                        <div class="widget-tripadvisor-rating"><img src="https://furamavietnam.com/wp-content/uploads/2018/08/widget-tripadvisor-rating.png" alt=""></div>
                        <div class="widget-tripadvisor-text">2,746 Reviews</div>
                    </div>
                </div>
            </a>
            <span class="catalog-widget-toggle"></span> </div>
    </div>
    <div class="col-lg-3">
        <div class="header-contact d-flex">
            <div class="header-contact-icon">
                <i class="icon-placeholder"></i></div>
            <div class="header-contact-txt">
                <p>103 – 105 Đường Võ Nguyên Giáp, Phường Khuê Mỹ, Quận Ngũ hành Sơn, Tp. Đà Nẵng, Việt Nam                                                                                        </p><p class="txt-sm">
                <span>7.0 km</span> từ Sân bay Quốc tế Đà Nẵng</p>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
            <div class="d-flex">
                <div>
                    <p class="txt-lg">
                        Phone number: 84-236-3847 333/888</p>
                </div>
            </div>
            <div class="d-flex">
                <div >
                    <p>Email:</p>
                    <a href="mailto:reservation@furamavietnam.com">
                        reservation@furamavietnam.com </a>
                </div>
            </div>
    </div>
</div>
        <nav class="navbar navbar-expand-lg navbar-light bg-transparent container sticky-lg-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="http://localhost:8080/view/home.jsp">Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Employee</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Customer</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Service
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="http://localhost:8080/view/service/listRoom.jsp">Type Room</a></li>
                                <li><a class="dropdown-item" href="http://localhost:8080/view/service/listService.jsp">List Service</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contract</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
<div class="row" style="margin: auto">
    <div class="col-lg-4 d-flex">
        <div class="row d-flex" style="text-align: center">
            <H5>Địa Điểm Tham Quan</H5>
            <p>Khu nghỉ dưỡng Furama là cơ sở hàng đầu để khám phá một trong những điểm đến hấp dẫn nhất Châu Á.
                Chỉ cách Đà Nẵng một quãng lái xe ngắn là bốn Di sản Văn hóa Thế giới được UNESCO công nhận</p>
            <table class="table d-flex">
                <tr>
                    <td>1.</td>
                    <td><a href="https://vi.wikipedia.org/wiki/C%E1%BB%91_%C4%91%C3%B4_Hu%E1%BA%BF">Cố đô Huế</a></td>
                    <td class="text-right"><span>2 tiếng</span></td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td><a href="https://vi.wikipedia.org/wiki/H%E1%BB%99i_An">Phố cổ Hội An</a></td>
                    <td class="text-right"><span>30 phút</span></td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td><a href="https://vi.wikipedia.org/wiki/Th%C3%A1nh_%C4%91%E1%BB%8Ba_M%E1%BB%B9_S%C6%A1n">Thánh địa Mỹ Sơn</a></td>
                    <td class="text-right"><span>90 phút</span></td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td><a href="https://vi.wikipedia.org/wiki/%C4%90%E1%BB%99ng_Phong_Nha">Động Phong Nha</a></td>
                    <td class="text-right"><span>3 tiếng</span></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="col-lg-8" style=>
        <div >
            <H6>KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI, FURAMA ĐÀ NẴNG, NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM.</H6>
            <img src="https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach.jpg" alt="" class="img-fluid">

            <h6>CÁC LOẠI PHÒNG
                Khu nghỉ dưỡng có 196 phòng được thiết kế theo phong cách truyền thống Việt Nam kết hợp với phong cách Pháp, 2 tòa nhà 4 tầng có hướng nhìn ra biển, nhìn ra hồ bơi trong xanh và những khu vườn nhiệt đới xanh tươi mát. Ngoài ra, khu nghỉ dưỡng Furama còn cung cấp các liệu pháp spa, phòng xông hơi ướt, phòng xông hơi khô, dịch vụ mát-xa cạnh hồ bơi, các dịch vụ thể thao dưới nước và các lớp tập yoga và Thái Cực Quyền trên bãi biển.</h6>
            <h6>Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản văn hoá thế giới: Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70 căn biệt thự từ hai đến bốn phòng ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong cách thiết kế truyền thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu nghỉ dưỡng danh giá nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi tiếng, giới hoàng gia, chính khách, ngôi sao điện ảnh và các nhà lãnh đạo kinh doanh quốc tế.</h6>

        </div>

    </div>
</div>

<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>
