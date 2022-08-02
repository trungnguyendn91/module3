<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/31/2022
  Time: 9:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to customer list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${product.name}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><fmt:setLocale value="en"/>
                <fmt:formatNumber type="number"
                                  pattern="0" value="${product.price}"
                                  var="myNum"/>
                <input type="number" min="0" name="price" pattern="0"
                       step="0.01" required
                       value="${myNum}"/></td>
<%--                <td><input type="text" name="price" id="price" value="${product.price}"></td>--%>
            </tr>
            <tr>
                <td>Product Description: </td>
                <td><input type="text" name="productDescription" id="productDescription" value="${product.productDescription}"></td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td><input type="text" name="producer" id="producer" value="${product.producer}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
