<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/4/2022
  Time: 9:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
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
                        <li><a class="dropdown-item" href="http://localhost:8080/view/listRoom.jsp">Type Room</a></li>
                        <li><a class="dropdown-item" href="http://localhost:8080/view/listService.jsp">List Service</a></li>
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
<div align="center">
    <form method="post">
        <table class="table table-success table-striped">
            <caption>
                <h2>
                    Create service
                </h2>
            </caption>
            <input type="hidden" name="id" value=" "/>
            <tr>
                <th>Loại phòng:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value=""
                    />
                </td>
            </tr>

            <tr>
                <th>Diện tíchm<sup>2</sup></th>
                <td>
                    <input type="text" name="email" size="45"
                           value=" "
                    />
                </td>
            </tr>
            <tr>
                <th>Chi phí thuê:</th>
                <td>
                    <input type="text" name="country" size="15"
                           value=" "
                    />
                </td>
            </tr>
            <tr>
                <th>Số người tối đa:</th>
                <td>
                    <input type="text" name="country" size="15"
                           value=" "
                    />
                </td>
            </tr>
            <tr>
                <th>Kiểu thuê:</th>
                <td>
                    <input type="text" name="country" size="15"
                           value=" "
                    />
                </td>
            </tr>
            <tr>
                <th>Tiêu chuẩn phòng:</th>
                <td>
                    <input type="text" name="country" size="15"
                           value=" "
                    />
                </td>
            </tr>
            <tr>
                <th>Tiện ích:</th>
                <td>
                    <input type="text" name="country" size="15"
                           value=" "
                    />
                </td>
            </tr>
            <tr>
                <th>Diện tích hồ bơi:</th>
                <td>
                    <input type="text" name="country" size="15"
                           value=" "
                    />
                </td>
            </tr>
            <tr>
                <th>Sô tầng:</th>
                <td>
                    <input type="text" name="country" size="15"
                           value=" "
                    />
                </td>
            </tr>
            <tr>
                <th>Dịch vụ miễn phí:</th>
                <td>
                    <input type="text" name="country" size="15"
                           value=" "
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>

                </td>
            </tr>
        </table>
    </form>
</div>


<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>

</body>
</html>
