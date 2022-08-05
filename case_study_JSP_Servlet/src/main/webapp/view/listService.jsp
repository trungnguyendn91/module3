<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/4/2022
  Time: 4:50 PM
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
<H3 style="text-align: center">Danh Sách Các Dịch Vụ</H3>

<a href="http://localhost:8080/view/createService.jsp" style="color: red">
    <button>Thêm mới</button>
</a>

<a href="">
    <button type="submit">Sắp xếp</button>
</a>

<div align="center">
    <table class="table table-success table-striped">
        <tr>
            <th>Loại Phòng</th>
            <th>Diện Tích(m <sup>2</sup>)</th>
            <th>View</th>
            <th>Tiện Ích</th>
            <th class="text-center" colspan="2">Actions</th>
        </tr>
            <tr>
                <td>Phòng Suite</td>
                <td>85.85</td>
                <td>Hướng Biển</td>
                <td>Free ăn sáng</td>
                <td class="text-center">
                    <a href="">
                        <button onclick="showInfoUpdate" type="button"
                                class="btn btn-primary" data-bs-popper="modal" data-bs-target="#updateModal">
                            edit
                        </button></a>
                </td>
                <td class="text-center">
                    <!-- Button trigger modal -->
                    <button onclick="showInfoDelete()" type="button"
                            class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Delete
                    </button>
                </td>
            </tr>
        <tr>
            <td>Phòng Deluxe</td>
            <td>40.1</td>
            <td>Hướng Biển</td>
            <td>Free ăn sáng</td>
            <td class="text-center">
                <a href="">
                    <button onclick="showInfoUpdate" type="button"
                            class="btn btn-primary" data-bs-popper="modal" data-bs-target="#updateModal">
                        edit
                    </button></a>
            </td>
            <td class="text-center">
                <!-- Button trigger modal -->
                <button onclick="showInfoDelete()" type="button"
                        class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Delete
                </button>
            </td>
        </tr>
        <tr>
            <td>Biệt Thự</td>
            <td>85.85</td>
            <td>Hướng Vườn</td>
            <td>Có Hồ Bơi Riêng</td>
            <td class="text-center">
                <a href="">
                    <button onclick="showInfoUpdate" type="button"
                            class="btn btn-primary" data-bs-popper="modal" data-bs-target="#updateModal">
                        edit
                    </button></a>
            </td>
            <td class="text-center">
                <!-- Button trigger modal -->
                <button onclick="showInfoDelete()" type="button"
                        class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Delete
                </button>
            </td>
        </tr>
    </table>
    <form action="" method="post">
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="deleteModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input hidden type="text" name="id" id="deleteId">
                        <span>Bạn có muốn xóa : </span><span id="deleteName"></span>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Delete</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <form action="" method="post">
        <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form method="post">
                            <table border="1" cellpadding="5">
                                <caption>
                                    <h2>
                                        Edit service
                                    </h2>
                                </caption>
                                    <input type="hidden" name="id" value=" />"/>
                                <tr>
                                    <th>Loại phòng:</th>
                                    <td>
                                        <input type="text" name="name" size="45"
                                               value="' />"
                                        />
                                    </td>
                                </tr>

                                <tr>
                                    <th>Diện tíchm<sup>2</sup></th>
                                    <td>
                                        <input type="text" name="email" size="45"
                                               value="' />"
                                        />
                                    </td>
                                </tr>
                                <tr>
                                    <th>Chi phí thuê:</th>
                                    <td>
                                        <input type="text" name="country" size="15"
                                               value="' />"
                                        />
                                    </td>
                                </tr>
                                <tr>
                                    <th>Số người tối đa:</th>
                                    <td>
                                        <input type="text" name="country" size="15"
                                               value="' />"
                                        />
                                    </td>
                                </tr>
                                <tr>
                                    <th>Kiểu thuê:</th>
                                    <td>
                                        <input type="text" name="country" size="15"
                                               value="' />"
                                        />
                                    </td>
                                </tr>
                                <tr>
                                    <th>Tiêu chuẩn phòng:</th>
                                    <td>
                                        <input type="text" name="country" size="15"
                                               value="' />"
                                        />
                                    </td>
                                </tr>
                                <tr>
                                    <th>Tiện ích:</th>
                                    <td>
                                        <input type="text" name="country" size="15"
                                               value="' />"
                                        />
                                    </td>
                                </tr>
                                <tr>
                                    <th>Diện tích hồ bơi:</th>
                                    <td>
                                        <input type="text" name="country" size="15"
                                               value="' />"
                                        />
                                    </td>
                                </tr>
                                <tr>
                                    <th>Sô tầng:</th>
                                    <td>
                                        <input type="text" name="country" size="15"
                                               value="' />"
                                        />
                                    </td>
                                </tr>
                                <tr>
                                    <th>Dịch vụ miễn phí:</th>
                                    <td>
                                        <input type="text" name="country" size="15"
                                               value="' />"
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
                </div>
            </div>
        </div>
    </form>
    <script>
        function showInfoDelete(id,name) {
            document.getElementById("deleteId").value= id;
            document.getElementById("deleteName").innerText=name;
        }
        function showInfoUpdate(id,name) {
            document.getElementById("updateId").value= id;
            document.getElementById("updateName").innerText=name;
        }
    </script>
</div>
<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>
