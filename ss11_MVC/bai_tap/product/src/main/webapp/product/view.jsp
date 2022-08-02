
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/31/2022
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>$Detail$</title>
</head>
<body>
<p>
    <a href="/products">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Mã sản phẩm: </td>
        <td>${product.id}</td>
    </tr>
    <tr>
        <td>Tên sản phẩm: </td>
        <td>${product.name}</td>
    </tr>
    <tr>
        <td>Giá: </td>
        <td><fmt:formatNumber type = "number"
                              pattern = "###,###" value = "${product.price}" /></td>

    <tr>
        <td>Mô tả: </td>
        <td>${product.productDescription}</td>
    </tr>
    <tr>
        <td>Nhà sản xuất: </td>
        <td>${product.producer}</td>
    </tr>
</table>
</body>
</html>
