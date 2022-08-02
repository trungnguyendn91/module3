<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/1/2022
  Time: 4:11 PM
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
<body  align="center" style="background-color: cornflowerblue">

    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create" style="color: red">Thêm mới</a>
    </h2>
    <form action="/users?action=search" method="post">
        <input required type="text" name="search">
        <button type="submit">Tìm bằng country</button>
    </form>
    <a href="/users?action=sort">
        <button type="submit">Xắp xếp</button>
    </a>

<div align="center">
    <caption><h2 style="color: chartreuse">List of Users</h2></caption>
    <table class="table table-success table-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th class="text-center" colspan="2">Actions</th>
        </tr>
        <c:forEach var="user" items="${user}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td class="text-center">
                    <a href="/users?action=edit&id=${user.id}">
                        <button type="button" class="btn btn-primary">
                        edit
                    </button></a>
               </td>
                <td class="text-center">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#exampleModal-${user.id}">
                        Delete
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal-${user.id}" tabindex="-1"
                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                        ${user.id}
                                        ${user.name}
                                        ${user.email}
                                        ${user.country}

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                    </button>
                                    <a href="/users?action=delete&id=${user.id}">
                                        <button type="button" class="btn btn-primary">Save changes</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>