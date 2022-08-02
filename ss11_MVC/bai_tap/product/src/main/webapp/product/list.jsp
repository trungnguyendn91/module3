<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/31/2022
  Time: 9:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product</h1>
<p>
    <a href="/products?action=create">Create new product</a>
</p>
<form action="/products" method="post">
    <label>Tìm kiếm sản phẩm: </label>
    <input type="text" name="product-name" placeholder="Nhập tên sản phẩm">
    <button name="action" value="search">Tìm</button>
</form>
<table border="1">
    <tr>
        <td>Tên</td>
        <td>Giá</td>
        <td>Mô tả sản phẩm</td>
        <td>Nhà sản xuất</td>
        <td>Delete</td>
        <td>Edit</td>
    </tr>
    <c:forEach items='${products}' var="product">
    <tr>
        <td><a href="/products?action=view&id=${product.id}">${product.name}</a></td>
        <td><fmt:formatNumber type = "number"
                              pattern = "###,###" value = "${product.price}" /></td>
        <td>${product.productDescription}</td>
        <td>${product.producer}</td>
        <td><a href="/products?action=delete&id=${product.id}">Xóa</a></td>
        <td><a href="/products?action=update&id=${product.id}">Sửa</a></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
