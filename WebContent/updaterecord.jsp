<%@page import="modal.BLManager"%>
<%@page import="com.pojo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<style type="text/css">
  <%@include file="css/style.css" %>
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update record</title>
</head>
<% 
BLManager bl=new BLManager();
bl.getALLrecords();
%>

<body>

<div class="container">
<h2>Update Profile</h2>
<form method="post" action="UpdateRecordinfo">
<div class="form-group">
<input type="hidden" name="id" value="${list.getId()}" readonly="readonly" class="form-control">
</div>

<div class="form-group">
Name<input type="text" name="name" value="${list.getName()}" class="form-control">
</div>

<div class="form-group">
Email<input type="text" name="email" value="${list.getEmail()}" class="form-control">
</div>

<div class="form-group">
<input type="hidden" name="password" value="${list.getPassword()}" readonly="readonly" class="form-control">
</div>

<div class="form-group">
Phone<input type="text" name="phone" value="${list.getPhone()}" class="form-control">
</div>

<div class="form-group">
Gender<input type="text" name="gender" value="${list.getGender()}" class="form-control">
</div>

<div class="form-group">
Address<input type="text" name="address" value="${list.getAddress()}" class="form-control">
</div>

<div class="form-group">
State<input type="text" name="state" value="${list.getState()}" class="form-control">
</div>

<div class="form-group">
City<input type="text" name="city" value="${list.getCity()}" class="form-control">
</div>

<div class="form-group">
Pincode<input type="text" name="pincode" value="${list.getPincode()}" class="form-control">
</div>

<input type="submit" class="btn btn-info" value="Update Record" />
</form>
<a style="position:relative;bottom:48px;left:133px;" href="changepassword.jsp"><input type="submit" class="btn btn-md btn-info" value="Update Password" /></a>
</div>

</body>
</html>