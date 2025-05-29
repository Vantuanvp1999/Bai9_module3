<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 5/29/2025
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        .login{
            width: 180px;
            height:230px;
            margin: 0px;
            padding: 10px;
            border:1px solid #ccc;

        }
        input{
            margin: 5px;
            padding: 5px;
        }

    </style>
</head>
<body>
<form action="/login" method="post">
    <div class="login">
        <input type="text" name="username" size="30" placeholder="username"/>
        <input type="password" name="password" size="30" placeholder="password"/>
        <input type="submit" value="Sign in">

    </div>
</form>
</body>
</html>
