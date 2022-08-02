<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/31/2022
  Time: 4:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Create Product$</title>
</head>
<body>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a  href="/products">Quay lại trang chủ</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thêm thông tin</legend>
        <table>
            <tr>
                <td>Tên sản phẩm:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Giá:</td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Mô tả:</td>
                <td><input type="text" name="productDescription" id="productDescription"></td>
            </tr>
            <tr>
                <td>Nhà cung cấp:</td>
                <td><input type="text" name="producer" id="producer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Tạo sản phẩm"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>