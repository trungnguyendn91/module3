<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/5/2022
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Customer</title>
    <link rel="stylesheet" href="\bootstrap-5.0.2-dist\css\bootstrap.min.css">
    <style>
        #sticky {
            /*position: relative;*/
            /*position: sticky;*/
            /*position: -webkit-sticky;*/
            /*left: 0;*/
            position: fixed;
            top: 150px;
            width: 1300px;
            margin: auto;
        }
    </style>

</head>
<body style="background-color: powderblue">

<%@include file="/view/include/head.jsp" %>
<H3 style="text-align: center">Danh Sách Khách Hàng</H3>
<div class>
    <div class="row">
        <div class="col-lg-4 ">
            <div class="d-flex">
                <a href="/customers?action=create">
                    <button>Thêm mới</button>
                </a>
            </div>
        </div>
        <div class="col-lg-4 ">

        </div>
        <div class="col-lg-4 ">
            <div class="container-fluid">
                <form action="/customers?action=search" method="post">
                    <input required type="text" name="search">
                    <button type="submit">Tìm bằng tên</button>
                </form>
                </form>
            </div>
        </div>
    </div>
</div>
<a href="" class="container-fluid">
    <button type="submit">Sắp xếp</button>
</a>
<div align="center">
    <table class="table table-success table-striped">
        <tr style="text-align: center">
            <th>Id Customer</th>
            <th>Type</th>
            <th>Name</th>
            <th>Birthday</th>
            <th>Gender</th>
            <th>Id number</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Address</th>
            <th class="text-center" colspan="2">Actions</th>
        </tr>
        <c:forEach var="customer" items="${listCustomer}">
            <tr>
                <td>${customer.customerId}</td>
                <td>${customer.customerTypeId}</td>
                <td>${customer.customerName}</td>
                <td>${customer.customerBirth}</td>
                <td>${customer.customerGender}</td>
                <td>${customer.customerIdCard}</td>
                <td>${customer.customerPhone}</td>
                <td>${customer.customerEmail}</td>
                <td>${customer.customerAddress}</td>
                <td class="text-center">
                    <a href="/customers?action=edit&id=${customer.customerId}">
                        <button type="button" class="btn btn-primary">
                            edit
                        </button>
                    </a>
                </td>
                <td class="text-center">
                    <!-- Button trigger modal -->
                    <button onclick="showInfoDelete('${customer.customerId}','${customer.customerName}')" type="button"
                            class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>

    </table>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="/customers?action=delete" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input type="text" name="deleteId" id="deleteId">
                        <span>Bạn có muốn xóa khách hàng: </span><span id="deleteName"></span>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Delete</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script>
        function showInfoDelete(id, name) {
            document.getElementById("deleteId").value = id;
            document.getElementById("deleteName").innerText = name;

        }
    </script>
</div>
<%@include file="/view/include/footer.jsp" %>
<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>
