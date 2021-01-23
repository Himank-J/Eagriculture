<%@page import="modal.BLManager"%>
<%@page import="com.pojo.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update products</title>
</head>
<% 
BLManager bl=new BLManager();
bl.getProducts();
%>

<body>

<div class="container">
<h2>Update Products</h2>
<form method="post" action="../UpdateProductinfo" enctype="multipart/form-data">
<div class="form-group">
Id<input type="text" name="id" value="${list.getPid()}" readonly="readonly" class="form-control">
</div>

<div class="form-group">
Name<input type="text" name="pname" value="${list.getPname()}" class="form-control">
</div>

<div class="form-group">
Description<textarea name="pdescription" class="form-control">${list.getPdescription()}</textarea>
</div>

<div class="form-group">
Price<input type="text" name="price" value="${list.getPrice()}" class="form-control">
</div>

<div class="form-group">
Total Quantity<input type="text" name="totquantity" value="${list.getTotquantity()}" class="form-control">
</div>

<div class="form-group">
Product Type<input type="text" name="type" value="${list.producttype.getProducttype()}" class="form-control">
</div>

<div class="form-group">
IMAGE:<input type="file" name="image" class="form-control">
</div>
<input type="submit" class="btn btn-info" value="Update Product" />
</form>
</div>

</body>
</html>