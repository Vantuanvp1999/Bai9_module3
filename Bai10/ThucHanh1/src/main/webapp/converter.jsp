<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/31/2025
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
float rate= Float.parseFloat(request.getParameter("rate"));
float USD= Float.parseFloat(request.getParameter("USD"));
float vnd = rate*USD;

%>
<h1>Rate: <%=rate%></h1>
<h1>USD: <%=USD%></h1>
<h1>VND: <%=vnd%></h1>
</body>
</html>
