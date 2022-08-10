<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/5/2022
  Time: 8:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add New Service</title>
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
    <a href="/facility" style="color: red">Comeback List Service</a>
</h2>
<div class="container w-50 mt-2 p-2" style="border: 1px solid grey; border-radius: 15px">
    <h3 align="center">Thêm Mới DỊCH VỤ</h3>
    <form class="row g-3" action="" method="post">
        <div class="col-md-12">
            <label for="ten_dich_vu" class="form-label">Tên dịch vụ:</label>
            <input type="text" class="form-control" id="ten_dich_vu"  name="ten_dich_vu" value="${facility.facilityArea}"/>
            <div style="color: red">${nameErr}</div>
        </div>
        <div class="col-md-12">
            <label for="dien_tich" class="form-label">Diện tích sử dụng (m<sup>2</sup>:</label>
            <input type="text" class="form-control" id="dien_tich" name="dien_tich" value="${facility.facilityName}"/>
            <div style="color: red">${areaErr}</div>
        </div>
        <div class="col-md-12">
            <label for="gia_thue" class="form-label">Giá thuê:</label>
            <input type="number" class="form-control" id="gia_thue" name="gia_thue" value="${facility.facilityCost}"/>
            <div style="color: red">${costErr}</div>
        </div>
        <div class="col-md-12">
            <label for="so_nguoi_toi_da" class="form-label">Số người:</label>
            <input type="number" class="form-control" id="so_nguoi_toi_da" name="so_nguoi_toi_da" value="${facility.facilityMaxPeople}"/>
            <div style="color: red">${maxPeopleErr}</div>
        </div>
        <div class="col-md-12">
            <label for="ma_kieu_thue" class="form-label">Kiểu thuê:</label>
            <select name="ma_kieu_thue"  id="ma_kieu_thue" class="form-select ">
                <option value="1">Theo năm</option>
                <option value="2">Theo tháng</option>
                <option value="3">Theo ngày</option>
                <option value="4">Theo giờ</option>
            </select>
        </div>
        <div class="col-md-12">
            <label class="form-label">Mã loại dịch vụ</label>
            <select name="ma_loai_dich_vu"  class="form-select" onchange="showServiceInput(this)">
                <option value="None">Chọn loại dịch vụ</option>
                <option value="1" >Villa</option>
                <option value="2" >House</option>
                <option value="3" >Room</option>
            </select>
        </div>
        <div class="col-md-12 " id="s1" style="display: none">
            <label for="tieu_chuan_phong" class="form-label">Tiêu chuẩn phòng </label>
            <input type="text" class="form-control" id="tieu_chuan_phong" name="tieu_chuan_phong" value="${facility.standardRoom}"/>
        </div>
        <div class="col-md-12 " id="s2" style="display: none">
            <label for="mo_ta_tien_nghi_khac" class="form-label">Tiện nghi khác</label>
            <input type="text" class="form-control" id="mo_ta_tien_nghi_khac" name="mo_ta_tien_nghi_khac" value="${facility.description}">
        </div>
        <div class="col-md-12 " id="s3" style="display: none">
            <label for="dien_tich_ho_boi" class="form-label">Diện tích hồ bơi  </label>
            <input type="number" class="form-control" id="dien_tich_ho_boi" name="dien_tich_ho_boi" value="${facility.poolArea}">
            <div style="color: red">${poolErr}</div>
        </div>
        <div class="col-md-12" id="s4" style="display: none">
            <label for="so_tang" class="form-label">Số tầng </label>
            <input type="number" class="form-control" id="so_tang" name="so_tang" value="${facility.numberOfFloor}">
            <div style="color: red">${floorErr}</div>
        </div>
        <div class="col-md-12 " id="s5" style="display: none">
            <label for="dich_vu_mien_phi_di_kem" class="form-label">Dịch vụ miễn phí: </label>
            <input type="text" class="form-control" id="dich_vu_mien_phi_di_kem" name="dich_vu_mien_phi_di_kem" value="${facility.freeSerVice}">
        </div>
        <div class="col-12 ">
            <button type="submit" class="btn btn-primary">Lưu</button>
        </div>
    </form>
</div>

<script>
    function showServiceInput(value) {
        var v = value.value;
        switch (v) {
            case 'None':
                document.getElementById("s1").style.display="none";
                document.getElementById("s2").style.display="none";
                document.getElementById("s3").style.display="none";
                document.getElementById("s4").style.display="none";
                document.getElementById("s5").style.display="none";
                break;
            case "1":
                document.getElementById("s1").style.display="block";
                document.getElementById("s2").style.display="block";
                document.getElementById("s3").style.display="block";
                document.getElementById("s4").style.display="block";
                document.getElementById("s5").style.display="none";
                break;
            case "2":
                document.getElementById("s1").style.display="block";
                document.getElementById("s2").style.display="block";
                document.getElementById("s4").style.display="block";
                document.getElementById("s5").style.display="none";
                document.getElementById("s3").style.display="none";
                break;
            case "3":
                document.getElementById("s1").style.display="none";
                document.getElementById("s2").style.display="none";
                document.getElementById("s3").style.display="none";
                document.getElementById("s4").style.display="none";
                document.getElementById("s5").style.display="block";
                break;
        }
    }
</script>

<%@include file="/view/include/footer.jsp"%>
<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>
