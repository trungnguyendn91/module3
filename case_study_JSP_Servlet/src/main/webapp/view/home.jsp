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
    <title>Home</title>
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
<body style="background-color: powderblue">
<%@include file="/view/include/head.jsp"%>

<div class="row" style="margin: auto">
    <div class="col-lg-3 ">
        <div class="row" style="text-align: center">
            <H5>Địa Điểm Tham Quan</H5>
            <p>Khu nghỉ dưỡng Furama là cơ sở hàng đầu để khám phá một trong những điểm đến hấp dẫn nhất Châu Á.
                Chỉ cách Đà Nẵng một quãng lái xe ngắn là bốn Di sản Văn hóa Thế giới được UNESCO công nhận</p>
            <table class="table" style="margin: auto">
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
    <div class="col-lg-6" style="text-align: center;">
        <div >
            <H3>KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI, FURAMA ĐÀ NẴNG,<br>
                NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM.</H3>
        </div>
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="\img\Furama-Đà-Nẵng-Resort.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="\img\furama-cleaned.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="\img\53114-furama-resort-da-nang-11.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
        </div>

    </div>
    <div class="col-lg-3" style="text-align: center;">
        <div>
            <h5>CÁC LOẠI PHÒNG</h5>
            <p>Khu nghỉ dưỡng có 196 phòng được thiết kế theo phong cách truyền thống Việt Nam kết hợp với phong cách Pháp, 2 tòa nhà 4 tầng có hướng nhìn ra biển, nhìn ra hồ bơi trong xanh và những khu vườn nhiệt đới xanh tươi mát. Ngoài ra, khu nghỉ dưỡng Furama còn cung cấp các liệu pháp spa, phòng xông hơi ướt, phòng xông hơi khô, dịch vụ mát-xa cạnh hồ bơi, các dịch vụ thể thao dưới nước và các lớp tập yoga và Thái Cực Quyền trên bãi biển.
            Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản văn hoá thế giới: Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70 căn biệt thự từ hai đến bốn phòng ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong cách thiết kế truyền thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu nghỉ dưỡng danh giá nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi tiếng, giới hoàng gia, chính khách, ngôi sao điện ảnh và các nhà lãnh đạo kinh doanh quốc tế.</p>

        </div>
    </div>
</div>
<%@include file="/view/include/footer.jsp"%>

<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>
