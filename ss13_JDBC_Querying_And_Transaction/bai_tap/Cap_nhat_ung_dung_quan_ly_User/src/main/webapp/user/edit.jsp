<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/1/2022
  Time: 4:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet" href="/user/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <script src="/user/bootstrap-5.0.2-dist/jquery-3.6.0.min.js"></script>
    <script src="/user/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</head>
<body align="center" style="background-color: cornflowerblue">

    <h1>Edit User</h1>
    <h2>
        <a href="users?action=users" style="color: red">Comeback List User</a>
    </h2>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit User
                </h2>
            </caption>
            <c:if test="${user != null}">
                <input type="hidden" name="id" value="<c:out value='${user.id}' />"
            </c:if>
            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${user.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <input type="text" name="email" size="45"
                           value="<c:out value='${user.email}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <input type="text" name="country" size="15"
                           value="<c:out value='${user.country}' />"
                    />
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
</body>
</html>
