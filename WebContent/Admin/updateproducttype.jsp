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
<title>update product type</title>
</head>
<% 
BLManager bl=new BLManager();
bl.getProducttype();
%>

<body>

<div class="container">
<h2>Update Product type</h2>
<form method="post" action="../UpdateProtypeinfo" enctype="multipart/form-data">

<div class="form-group">
Id<input type="text" name="tid" value="${list.getTid()}" readonly="readonly" class="form-control">
</div>

<div class="form-group">
Product Type<input type="text" name="producttype" value="${list.getProducttype()}" class="form-control">
</div>

<input type="submit" class="btn btn-info" value="Update Product Type" />

</form>
</div>


</body>
</html>