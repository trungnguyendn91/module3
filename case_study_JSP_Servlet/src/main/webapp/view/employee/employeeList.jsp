<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/5/2022
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Employee</title>
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
<H3 style="text-align: center">Danh Sách Nhân Viên</H3>

<a href="http://localhost:8080/view/employee/newEmployee.jsp" >
    <button>Thêm mới</button>
</a>

<a href="">
    <button type="submit">Sắp xếp</button>
</a>

<div align="center">
    <table class="table table-success table-striped">
        <tr>
            <th>Id Employee</th>
            <th>Name</th>
            <th>Birthday</th>
            <th>Id number</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Education Degree</th>
            <th>Position</th>
            <th>Salary</th>
            <th class="text-center" colspan="2">Actions</th>
        </tr>
        <tr>
            <td>1</td>
            <td>Tiểu Nhị</td>
            <td>22/12/1993</td>
            <td>123123432</td>
            <td>0922786459</td>
            <td>tieunhi@gmail.com</td>
            <td>Cao Đẳng</td>
            <td>Phục Vụ</td>
            <td>9000000</td>
            <td class="text-center">
                <a href="http://localhost:8080/view/customer/editCustomer.jsp">
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
            <td>11</td>
            <td>Lảo Bản</td>
            <td>22/12/1983</td>
            <td>7232133432</td>
            <td>0934765890</td>
            <td>laoban@gmail.com</td>
            <td>Đại Học</td>
            <td>Quản Lý</td>
            <td>19000000</td>
            <td class="text-center">
                <a href="http://localhost:8080/view/customer/editCustomer.jsp">
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
            <td>13</td>
            <td>Đại Sư</td>
            <td>22/03/1985</td>
            <td>4567133432</td>
            <td>0953723568</td>
            <td>daisu@gmail.com</td>
            <td>Đại Học</td>
            <td>Chuyên Viên</td>
            <td>22000000</td>
            <td class="text-center">
                <a href="http://localhost:8080/view/customer/editCustomer.jsp">
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