<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h2>Vietnamese dictionary</h2>
<form action="/translate" method="post">
<input type="text" name="TxtSearch" placeholder="Enter word" />
<input type="submit" id="submit" value="Search" />
</form>
</body>
</html>