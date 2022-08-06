<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/6/2022
  Time: 10:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add New Contract</title>
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
<div class="container w-50 mt-2" style="border: 1px solid grey; border-radius: 15px">
    <h3 align="center">THÊM MỚI HỢP ĐỒNG</h3>
    <form action="" method="post">
        <label class="form-label" for="aaa">Loại Khách</label>
        <select id="aaa" name="" class="form-select">
            <option value="Member">Member</option>
            <option value="Silver">Silver</option>
            <option value="Gold">Gold</option>
            <option value="Platinium">Platinium</option>
            <option value="Diamond">Diamond</option>
        </select>
        <label for="startDay" class="form-label">Ngày Bắt Đầu</label>
        <input type="date" class="form-control" id="startDay" name="startDay">
        <label for="endDay" class="form-label">Ngày Kết Thúc</label>
        <input type="date" class="form-control" id="endDay" name="endDay">
        <label for="deposits" class="form-label">Tiền Đặt Cọc</label>
        <input type="text" class="form-control" id="deposits" name="deposits">

        <label for="totalMoney" class="form-label">Tổng Tiền</label>
        <input type="text" class="form-control" id="totalMoney" name="totalMoney">

        <label class="form-label">Khách Hàng Thuê Dịch Vụ</label>
        <select name="" class="form-select">
            <option value="None">Chọn Khách Hàng</option>
            <option value="customerName">Thái</option>
            <option value="customerName">Quỳnh</option>
            <option value="customerName">Quốc</option>
            <option value="customerName">Trâm</option>
        </select>


        <label class="form-label">Dịch Vụ</label>
        <select name="" class="form-select">
            <option value="None">Chọn Dịch Vụ</option>
            <option value="serviceName">Villa</option>
            <option value="serviceName">House</option>
            <option value="serviceName">Room</option>
        </select><br>
        <div class="text-center">
            <button type="submit" class="btn btn-primary" style="background-color: red">Hủy</button>
            <button type="submit" class="btn btn-primary">Thêm Mới</button>
        </div>

    </form>
</div>
<%@include file="/view/include/footer.jsp" %>
<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>
