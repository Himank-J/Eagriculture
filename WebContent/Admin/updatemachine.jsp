<%@page import="modal.BLManager"%>
<%@page import="com.pojo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update machine</title>
</head>
<% 
BLManager bl=new BLManager();
bl.getallMachinery();
%>

<body>

<div class="container">
<h2>Update Machines</h2>
<form action="../UpadteMachineInfo" method="post" enctype="multipart/form-data">
<div class="form-group">
Id<input type="text" name="id" value="${list.getMid()}" readonly="readonly" class="form-control">
</div>

<div class="form-group">
NAME:<input type="text" name="mname" value="${list.getMname()}" class="form-control">
</div>

<div class="form-group">
ENGINEHP:<input type="text" name="enginehp" value="${list.getEnginehp()}" class="form-control">
</div>

<div class="form-group">
RATEDRPM:<input type="text" name="ratedrpm" value="${list.getRatedrpm()}" class="form-control">
</div>

<div class="form-group">
GEARS:<input type="text" name="gears" value="${list.getGears()}" class="form-control">
</div>

<div class="form-group">
SPEED:<input type="text" name="speed" value="${list.getSpeed()}" class="form-control">
</div>

<div class="form-group">
FRONT-TYRE:<input type="text" name="fronttype" value="${list.getFronttype()}" class="form-control">
</div>

<div class="form-group">
REAR-TYRE:<input type="text" name="reartype" value="${list.getReartype()}" class="form-control">
</div>

<div class="form-group">
LIFT CAPACITY:<input type="text" name="liftcap" value="${list.getLiftcap()}" class="form-control">
</div>

<div class="form-group">
FUEL CAPACITY:<input type="text" name="fuelcap" value="${list.getFuelcap()}" class="form-control">
</div>


<div class="form-group">
IMAGE:<input type="file" name="image" class="form-control">
</div>
<input type="submit" class="btn btn-info" value="Update Machine" />
</form>
</div>

</body>
</html>