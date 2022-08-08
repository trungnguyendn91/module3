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

<a href="/facility?action=create" style="color: red">
    <button>Thêm mới</button>
</a>

<a href="">
    <button type="submit">Sắp xếp</button>
</a>

<div align="center">
    <table class="table table-success table-striped">
        <tr>
            <th>Mã dịch vụ</th><%-- String serviceName = resultSet.getString("ten_dich_vu");--%>
            <th>Tên dịch vụ</th><%-- String serviceName = resultSet.getString("ten_dich_vu");--%>
            <th>Diện Tích(m <sup>2</sup>)</th><%--int serviceArea  = resultSet.getInt("dien_tich");--%>
            <th>Giá Thuê</th><%--double serviceCost = resultSet.getDouble("gia_thue");;--%>
            <th>Số Người</th><%--int serviceMaxPeople = resultSet.getInt("so_nguoi_toi_da");--%>
            <th>Kiểu Thuê</th><%--int rentTypeId = resultSet.getInt("ma_kieu_thue");--%>
            <th>Loại Dịch Vụ</th><%--int serviceTypeId = resultSet.getInt("ma_loai_dich_vu");--%>
            <th>Tiêu Chuẩn Phòng</th><%-- String standardRoom = resultSet.getString("tieu_chuan_phong");--%>
            <th>Tiện Nghi</th><%-- String description = resultSet.getString("mo_ta_tien_nghi_khac");--%>
            <th>Diện Tích Hồ Bơi</th><%-- Duoble poolArea = resultSet.getString("dien_tich_ho_boi");--%>
            <th>Số Tầng</th><%--  int numberOfFloor = resultSet.getInt("so_tang");--%>
            <th>Dịch vụ đi kèm</th><%--  String freeSerVice = resultSet.getString("dich_vu_mien_phi_di_kem");--%>
            <th class="text-center" colspan="2">Actions</th>
        </tr>
        <c:forEach var="facility" items="${listFacility}">
            <tr>
                <td>${facility.facilityId}</td>
                <td>${facility.facilityName}</td>
                <td>${facility.facilityArea}</td>
                <td>${facility.facilityCost}</td>
                <td>${facility.facilityMaxPeople}</td>
                <td>${facility.rentTypeId}</td>
                <td>${facility.facilityTypeId}</td>
                <td>${facility.standardRoom}</td>
                <td>${facility.description}</td>
                <td>${facility.poolArea}</td>
                <td>${facility.numberOfFloor}</td>
                <td>${facility.freeSerVice}</td>
                <td class="text-center">
                    <a href="/facility?action=edit&id=${facility.facilityId}">
                        <button type="button" class="btn btn-primary">
                            edit
                        </button></a>
                </td>
                <td class="text-center">
                    <!-- Button trigger modal -->
                    <button onclick="showInfoDelete('${facility.facilityId}','${facility.facilityName}')" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="/facility?action=delete" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input type="text" name="deleteId" id="deleteId">
                        <span>Bạn có muốn xóa dịch vụ: </span><span id="deleteName"></span>
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
