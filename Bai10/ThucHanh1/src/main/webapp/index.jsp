<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Currency converter</title>
</head>
<body>
<h1> Currency converter</h1>
<br/>
<form action="converter.jsp" method="get" role="form">
    <div class="form-group">
        <label>Rate:</label><br/>
        <input type="text" name="rate" placeholder="Rate" value="22000">
    </div>
    <div class="form-group">
        <label>USD:</label><br/>
        <input type="text" name="USD" placeholder="USD" value="0">
    </div>
    <input type="submit" id="submit" value="Converter">
</form>
</body>
</html>