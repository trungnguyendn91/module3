<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/28/2022
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Máy Tính</h1>
  <form method="post" action="/calculator">
    <fieldset>
      <legend>Calculator</legend>
      <table>
        <tr>
          <td>First operand: </td>
          <td><input name="num1" type="number"/></td>
        </tr>
        <tr>
          <td>Operator: </td>
          <td>
            <select name="operator">
              <option value="+">Cộng</option>
              <option value="-">Trừ</option>
              <option value="*">Nhân</option>
              <option value="/">Chia</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>Second operand: </td>
          <td><input name="num2" type="number"/></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="Calculate"/></td>
        </tr>
      </table>
    </fieldset>
  </form>
  </body>
</html>
