<html>
<title>Change Password</title>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
  <%@include file="css/style.css" %>
</style>
</head>
<body>
<h2><center>Change Password</center></h2><br>
<form action="updatePassword.jsp" method="post">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<div class="form-group">
CURRENT PASSWORD<div class="form-group"><input type="password" name="current" class="form-control">
</div>

<div class="form-group">
NEW PASSWORD<div class="form-group"><input type="password" name="new" class="form-control">
</div>

<div class="form-group">
CONFIRM PASSWORD<div class="form-group"><input type="password" name="confirm" class="form-control">
</div>

<input type="submit" class="btn btn-info" value="Change Password" />
</div>
<div class="col-sm-2"></div>
</div>
</form>
</body>
</html>