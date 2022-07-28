<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/28/2022
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
//    khai báo đối tượng printWriter
    PrintWriter printWriter = response.getWriter();
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");
    String result = dic.get(search);
    if (result != null) {
        printWriter.println("Word: " + search);
        printWriter.println("Result: " + result);
    } else {
        printWriter.println("Not found");
    }

%>

</body>
</html>
