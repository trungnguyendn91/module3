<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/5/2022
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Customer</title>
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
<div class="container w-50 mt-2 p-2" style="border: 1px solid grey; border-radius: 15px">
    <h3 align="center">SỬA THÔNG TIN KHÁCH HÀNG</h3>
    <div>
        <form method="post" style="margin: auto">
            <table>
                <tr>
                    <th>Loại khách:</th>
                    <td>
                        <select name="ma_loai_khach_hang" id="ma_loai_khach_hang" class="form-select">
                        <option value="1">Member</option>
                        <option value="2">Silver</option>
                        <option value="3">Gold</option>
                        <option value="5">Diamond</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <th>Tên Khách Hàng:</th>
                    <td>
                        <input required type="text" name="ho_ten"
                               value="${customer.customerName}"/>
                    </td>
                </tr>
                <tr>
                    <th>Ngày Sinh:</th>
                    <td>
                        <input required type="date" name="ngay_sinh" size="15"
                               value="${customer.customerBirth}"/>
                    </td>
                </tr>
                <tr>
                    <th>Giới Tính:</th>
                    <td>
                        <select name="gioi_tinh" class="form-select">
                        <option value="true">Nam</option>
                        <option value="false">Nữ</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>CMND/CCCD:</th>
                    <td>
                        <input required type="text" name="so_cmnd" size="25"
                               value="${customer.customerIdCard}"/>
                    </td>
                </tr>
                <tr>
                    <th>Số Điện Thoại:</th>
                    <td>
                        <input required type="text" name="so_dien_thoai" size="25"
                               value="${customer.customerPhone}"/>
                    </td>
                </tr>
                <tr>
                    <th>Email:</th>
                    <td>
                        <input required type="text" name="email" size="15"
                               value="${customer.customerEmail}"/>
                    </td>
                </tr>
                <tr>
                    <th>Địa Chỉ:</th>
                    <td>
                        <input required type="text" name="dia_chi" size="15"
                               value="${customer.customerAddress}"/>
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


<%@include file="/view/include/footer.jsp"%>
<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>