<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body class="bg-light d-flex justify-content-center align-items-center vh-100">
<div class="card shadow p-4" style="width: 100%; max-width: 500px">
<h2 class="text-center mb-4">Product Discount Caculator</h2>
<form action="/discount" method="post" class="form">
    <div class="form-group mb-3">
<label class="form-label">Product Description</label>

    <input type="text" name="description" placeholder="Enter product" class="form-control">
    </div>
    <div class="form-group mb-3">
    <label class="form-label"> List Price</label>
    <input type="number" name="price" class="form-control">
    </div>
    <div class="form-group mb-3">
    <label class="form-label">Discount percent(%)</label>
    <input type="number" name="discount" max="100" class="form-control">
    </div>
    <input type="submit" class="btn btn-success w-100" id="caculate" value="Caculate">
</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>