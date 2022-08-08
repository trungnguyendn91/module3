<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/5/2022
  Time: 9:57 AM
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
<nav class="navbar navbar-expand-lg container-fluid sticky-lg-top" style="background-color: #0a53be">
    <div class="container-fluid">
        <a class="navbar-brand" href="http://localhost:8080/view/home.jsp" style="color: #b6effb">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="http://localhost:8080/view/employee/employeeList.jsp"  style="color: #b6effb">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/customers"  style="color: #b6effb">Customer</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#"  style="color: #b6effb" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Service
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="http://localhost:8080/view/service/listRoom.jsp">Type Room</a></li>
                        <li><a class="dropdown-item" href="/facility">List Service</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/view/contract/contractList.jsp"  style="color: #b6effb">Contract</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


</body>
</html>
