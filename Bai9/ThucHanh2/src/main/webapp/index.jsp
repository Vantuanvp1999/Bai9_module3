<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    .login{
        height:180px;
        width: 230px;
        margin:0;
        padding: 10px;
        border: 1px solid black;
    }
    .login input{
        padding: 5px;
        margin: 5px;
    }
</style>
<body>
<form action ="/login" method="post">
    <div class="login">
        <h2>Login</h2>
        <input type="text" size="30" name="username" placeholder="username" />
        <input type="password" size="30" name="password" placeholder="password" />
        <input type="submit" value="Sign in"/>
    </div>
</form>
</body>
</html>