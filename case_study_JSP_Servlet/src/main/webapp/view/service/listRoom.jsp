<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/4/2022
  Time: 4:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Service</title>
    <link rel="stylesheet" href="\bootstrap-5.0.2-dist\css\bootstrap.min.css">
</head>
<body>
<div class="row" style="margin: auto; background-color:deepskyblue" >
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
            <span class="catalog-widget-toggle"></span>
        </div>
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
</div>
    <nav class="navbar navbar-expand-lg bg-transparent container sticky-lg-top" style="background-color: #b6effb">
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
<H3 style="text-align: center">Các Loại Phòng</H3>
<div>
    <div class="row">
        <div class="row text " >
            <div class="col-lg-3" style="border: #1a1e21">
                <div class="card">
                    <img class=" card-img-top" src="https://furamavietnam.com/wp-content/uploads/2018/03/Vietnam_Danang_Furama_Lagoon-Superior-twin-bed-F-370x239.jpg" alt="">
                    <p class="card-body">
                        <h9>PHÒNG SUITE HƯỚNG BIỂN</h9>
                        <h12>Diện Tích Phòng: 85.8 m<sup>2</sup></h12>
                    </p>
                </div>
            </div>
            <div class="col-lg-3" style="border: #1a1e21">
                <div class="card">
                    <img class=" card-img-top" src="https://furamavietnam.com/wp-content/uploads/2018/03/Vietnam_Danang_Furama_Ocean-Studio-Suite-F-370x239.jpg"></a>
                    <p class="card-body">
                        <h9>PHÒNG SUITE HƯỚNG BIỂN</h9>
                        <h12>Diện Tích Phòng: 40.1m<sup>2</sup></h12>
                    </p>
                </div>
            </div>
            <div class="col-md-3" style="border: #1a1e21">
                <div class="card">
                    <img class=" card-img-top " src="https://furamavietnam.com/wp-content/uploads/2018/03/Vietnam_Danang_Furama_Ocean-Deluxe-double-bed-F-370x239.jpg" alt=""></a>
                    <p class="card-body">
                        <h9>PHÒNG DELUXE HƯỚNG BIỂN</h9>
                        <h12>Diện Tích Phòng: 43.7m<sup>2</sup></h12>
                    </p>
                </div>
            </div>
            <div class="col-lg-3" style="border: #1a1e21" >
                <div class="card">
                    <img class=" card-img-top" src="https://furamavietnam.com/wp-content/uploads/2018/03/Vietnam_Danang_Furama_Lagoon-Superior-twin-bed-F-370x239.jpg">
                    <p class="card-body">
                        <h9>PHÒNG SUPERIOR HƯỚNG HỒ</h9>
                        <h12>Diện Tích Phòng: 40.1m<sup>2</sup></h12>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="row text " >
            <div class="col-lg-3" style="border: #1a1e21">
                <div class="card">
                    <img class=" card-img-top" src="https://furamavietnam.com/wp-content/uploads/2018/08/Vietnam_Danang_Furama_Garden-Deluxe-twin-bed-F-370x239.jpg" alt="">
                    <p class="card-body">
                        <h9>PHÒNG DELUXE HƯỚNG VƯỜN</h9>
                        <h12>Diện Tích Phòng: 43.8 m<sup>2</sup></h12>
                    </p>
                </div>
            </div>
            <div class="col-lg-3" style="border: #1a1e21">
                <div class="card">
                    <img class=" card-img-top" src="https://furamavietnam.com/wp-content/uploads/2018/03/Presidential-Suite-F-370x239.jpg"></a>
                    <p class="card-body">
                        <h9>PHÒNG PRESIDENTIAL SUITE</h9>
                        <h12>Diện Tích Phòng: 130m<sup>2</sup></h12>
                    </p>
                </div>
            </div>
            <div class="col-md-3" style="border: #1a1e21">
                <div class="card">
                    <img class=" card-img-top " src="https://furamavietnam.com/wp-content/uploads/2018/08/Vietnam_Danang_Furama_Villas_Pool_Villas-F-370x239.jpg" >
                    <p class="card-body">
                        <h9>BIỆT THỰ HƯỚNG VƯỜN CÓ HỒ BƠI RIÊNG</h9>
                        <br>
                        <h12>Diện Tích Phòng: 320m<sup>2</sup></h12>
                    </p>
                </div>
            </div>
            <div class="col-lg-3" style="border: #1a1e21" >
                <div class="card">
                    <img class=" card-img-top" src="https://furamavietnam.com/wp-content/uploads/2018/08/Vietnam_Danang_Furama_Villas_Beach_Pool_Villas-_Exterior-1-F-370x239.jpg">
                    <p class="card-body">
                        <h9>BIỆT THỰ HƯỚNG BIỂN CÓ HỒ BƠI RIÊNG</h9>
                        <br>
                        <h12>Diện Tích Phòng: 900m<sup>2</sup></h12>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
    <script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
    <script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>

