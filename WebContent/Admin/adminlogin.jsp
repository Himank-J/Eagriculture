<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Login form</title>
<style type="text/css">
<%@ include file="css/style1.css"%>
</style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="abc"><br /><br /><br /><br /><br /><br />
<div class="container-fluid">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<div class="reg">

<div class="modal-content">
<div class="modal-header modal-header1">
<h4><span class="glyphicon glyphicon-lock"></span>Admin Login</h4>
</div>

<div class="modal-body">
<form action="../Admin_Login" method="post">

<div class="form-group">
<label for="alogin_email" style="color: black;">USERNAME</label> 
<input type="email" class="form-control" placeholder="Enter Email" id="alogin_email" name="username" />
</div>

<div class="form-group">
<label for="a_password" style="color: black;">PASSWORD</label>
<input type="password" class="form-control"	placeholder="Enter Password" id="alogin_password" name="apassword" />
</div>

<input type="submit" class="btn btn-success reg_btn" value="Login"/>

</form>
</div>
</div>
</div>
</div>
<div class="col-sm-3"></div>
</div>
</div>
</body>
</html>
