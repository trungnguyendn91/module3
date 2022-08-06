<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/6/2022
  Time: 9:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Contract List</title>
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
<h3 style="text-align: center"> DANH SÁCH HỢP ĐỒNG </h3>
<a href="http://localhost:8080/view/customer/addNewCustomer.jsp" >
    <button>Thêm mới hợp đồng</button>
</a>
<div class="container-fluid">
    <div class="row">
        <div class="col-12 border border">


            <table class="table text-center table-striped" id="table">
                <thead>
                <tr class="table-dark">
                    <th>ID</th>
                    <th>Ngày bắt đầu</th>
                    <th>Ngày kết thúc</th>
                    <th>Deposit</th>
                    <th>Employee</th>
                    <th>Customer</th>
                    <th>Facility</th>
                    <th>Create</th>
                    <th>Service</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <!-- Button Modal thêm mới hợp đồng -->
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#newContractModal">
                            +
                        </button>
                    </td>
                    <td>

                        <!-- Button Modal DS dịch vụ đi kèm -->
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#accompaniedServiceModal">
                            DS Dịch vụ đi kèm
                        </button>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>
</div>


<!-- Modal thêm hợp đồng chi tiết-->
<div class="modal fade" id="newContractModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#accompaniedServiceModal">
                    DS Dịch vụ đi kèm
                </button>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="col-lg-10 mt-4 mr-20" style="width: 100%">
                        <div class="container-fluid">
                            <div class="row">
                                <h2 align="center">Thêm mới hợp đồng chi tiết</h2>
                                <form method="post">
                                    <table class="table" cellpadding="5">
                                        <tr>
                                            <th>Mã Hợp Đồng Chi Tiết:</th>
                                            <td>
                                                <input type="text" name="startDate" id="startDate" size="45"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Mã Hợp Đồng:</th>
                                            <td>
                                                <input type="text" name="endDate" id="endDate" size="45"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Mã Dịch Vụ Đi Kèm:</th>
                                            <td>
                                                <input type="text" name="idAttachService" id="idAttachService" size="45"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>Số Lượng:</th>
                                            <td>
                                                <input type="text" name="quantity" id="quantity" size="45"/>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">HUỶ BỎ</button>
                <button type="button" class="btn btn-primary">TẠO HỢP ĐỒNG</button>
            </div>
        </div>
    </div>
</div>


<%--    Modal dịch vụ đi kèm--%>
<div class="modal fade" id="accompaniedServiceModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="accompaniedServiceModalLabel">Dịch vụ</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <h3 style="text-align: center"> BẢNG DỊCH VỤ ĐI KÈM</h3>
                <table class="table text-center table-striped" id="table-facility">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Cost</th>
                        <th>Unit</th>
                        <th>Status</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div

<%@include file="/view/include/footer.jsp"%>

<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>
