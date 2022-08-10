<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/5/2022
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add New Customer</title>
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
<h2>
    <a href="/customers" style="color: red">Comeback List Customer</a>
</h2>
<div class="container w-50 mt-2 p-2" style="border: 1px solid grey; border-radius: 15px">
    <h2 style="text-align: center">Thêm Khách Hàng</h2>
    <form method="post">
        <table border="1" cellpadding="5">
            <tr>
                <th>Loại khách:</th>
                <td>
                    <select name="ma_loai_khach_hang"  class="form-select " >
                        <option value="1">Member</option>
                        <option value="2">Silver</option>
                        <option value="3">Gold</option>
                        <option value="4">Platinium</option>
                        <option value="5">Diamond</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Tên Khách Hàng:</th>
                <td>
                    <input required type="text" name="ho_ten" size="45" value="${customer.customerName}"/>
                    <div style="color: red">${nameErr}</div>
                </td>
            </tr>
            <tr>
                <th>Ngày Sinh:</th>
                <td>
                    <input required type="date" name="ngay_sinh" size="15" value="${customer.customerBirth}"/>
                    <div style="color: red">${birthdayErr}</div>
                </td>
            </tr>
            <tr>
                <th>Giới Tính:</th>
                <td>
                    <select name="gioi_tinh"  class="form-select ">
                        <option value="true">Nam</option>
                        <option value="false">Nữ</option>
                    </select>
                </td>
            </tr>
            <tr>
            <th>CMND/CCCD:</th>
                <td>
                    <input required type="number" name="so_cmnd" size="25" value="${customer.customerIdCard}"/>

                </td>
            </tr>
            <tr>
                <th>Số Điện Thoại:</th>
                <td>
                <input required type="number" name="so_dien_thoai" size="25" value="${customer.customerPhone}"/>
                    <div style="color: red">${phoneErr}</div>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input required type="text" name="email" size="15" value="${customer.customerEmail}"/>
                    <div style="color: red">${emailErr}</div>
                </td>
            </tr>
            <tr>
                <th>Địa Chỉ:</th>
                <td>
                    <input required type="text" name="dia_chi" size="15" value="${customer.customerAddress}"/>
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


<%@include file="/view/include/footer.jsp"%>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>

</body>
</html>
