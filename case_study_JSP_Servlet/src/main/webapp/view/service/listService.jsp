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
    <title>List Service</title>
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
<H3 style="text-align: center">Danh Sách Các Dịch Vụ</H3>

<a href="http://localhost:8080/view/service/newService.jsp" style="color: red">
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
                    <a href="http://localhost:8080/view/service/editService.jsp">
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
                <a href="http://localhost:8080/view/service/editService.jsp">
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
                <a href="http://localhost:8080/view/service/editService.jsp">
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
    <script>
        function showInfoDelete(id,name) {
            document.getElementById("deleteId").value= id;
            document.getElementById("deleteName").innerText=name;
        }
    </script>
</div>
<%@include file="/view/include/footer.jsp"%>
<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>
