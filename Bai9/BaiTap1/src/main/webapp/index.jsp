<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h2>Product Discount Caculator</h2>
<form action="/discount" method="post">
<label>Product Description</label>
    <input type="text" name="description" placeholder="Enter product">
    <label> List Price</label>
    <input type="number" name="price">
    <label>Discount percent(%)</label>
    <input type="number" name="discount" max="100">
    <input type="submit" id="caculate" value="Caculate">
</form>
</body>
</html>