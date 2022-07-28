<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/28/2022
  Time: 2:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--thư viện jstl--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table cellpadding="10" cellspacing="0" style="box-shadow: 1px 2px 2px 2px aqua; text-align: center; margin: auto; border: none " >
    <tr>
        <th colspan="4"><h1 style="color: red; text-align: center"> Danh sách truy nã</h1></th>
    </tr>
    <tr>
        <th>name</th>
        <th>birthday</th>
        <th>address</th>
        <th>picture</th>
    </tr>
    <c:forEach var="customer" items="${customerList}" varStatus="status">
    <tr>
        <td>${customer.name}</td>
        <td>${customer.birthDay}</td>
        <td>${customer.address}</td>
        <td><img src="${customer.picture}" style="width: 40px; height: 40px" alt=""></td>
    </tr>
    </c:forEach>

</body>
</html>
