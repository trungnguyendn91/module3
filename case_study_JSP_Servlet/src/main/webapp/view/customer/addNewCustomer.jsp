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
<div class="container w-50 mt-2 p-2" style="border: 1px solid grey; border-radius: 15px">
    <h3 align="center">THÊM THÔNG TIN KHÁCH HÀNG</h3>
    <form class="row g-3" action="" method="post">
        <div class="col-md-12">
            <label class="form-label">Loại Khách</label>
            <select name=""  class="form-select" onchange="showServiceInput(this)">
                <option value="Member" >Member</option>
                <option value="Silver" >Silver</option>
                <option value="Gold" >Gold</option>
                <option value="Platinium" >Platinium</option>
                <option value="Diamond" >Diamond</option>
            </select>
        </div>

        <div class="col-md-12">
            <label for="name" class="form-label">Tên Khách Hàng</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="col-md-12">
            <label for="area" class="form-label">Ngày sinh</label>
            <input type="date" class="form-control" id="area" name="area">
        </div>
        <div class="col-md-12">
            <label for="cost" class="form-label">Giới tính</label>
            <input type="text" class="form-control" id="cost"  name="cost" >
        </div>
        <div class="col-md-12">
            <label for="inputAddress2" class="form-label">Số CMND/CCCD </label>
            <input type="text" class="form-control" id="inputAddress2"  name="max_people" >
        </div>
        <div class="col-md-12">
            <label for="inputCity" class="form-label">Email</label>
            <input type="text" class="form-control" id="inputCity" name="rent_type_id">
        </div>
        <div class="col-md-12 " id="s1" style="display: none">
            <label for="standard_room" class="form-label">Địa Chỉ </label>
            <input type="text" class="form-control" id="standard_room" name="standard_room">
        </div>
        <div class="col-12 ">
            <button type="submit" class="btn btn-primary">Thêm Mới</button>
        </div>
    </form>
</div>



<%--<script>
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
            case "Villa":
                document.getElementById("s1").style.display="block";
                document.getElementById("s2").style.display="block";
                document.getElementById("s3").style.display="block";
                document.getElementById("s4").style.display="block";
                document.getElementById("s5").style.display="none";
                break;
            case "House":
                document.getElementById("s1").style.display="block";
                document.getElementById("s2").style.display="block";
                document.getElementById("s4").style.display="block";
                document.getElementById("s5").style.display="none";
                document.getElementById("s3").style.display="none";
                break;
            case "Room":
                document.getElementById("s1").style.display="none";
                document.getElementById("s2").style.display="none";
                document.getElementById("s3").style.display="none";
                document.getElementById("s4").style.display="none";
                document.getElementById("s5").style.display="block";
                break;
        }
    }
</script>--%>

<%@include file="/view/include/footer.jsp"%>
<script src="\bootstrap-5.0.2-dist\js\bootstrap.min.js"></script>
<script src="\bootstrap-5.0.2-dist\jquery-3.6.0.min.js"></script>
</body>
</html>
