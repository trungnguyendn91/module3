<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/27/2022
  Time: 8:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
      <form action="/Discount" method="post">
        <input type="text" name="productDescription" placeholder="Mo ta san pham">
        <input type="text" name="price" placeholder="Gia san pham ">
        <input type="text" name="discountRate" placeholder="chiet khau %">

        <button  type="submit">Calculator</button>
      </form>
  </body>
</html>
