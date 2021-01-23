<!DOCTYPE html>
<%@page import="com.pojo.*"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<head>
<title>Add Machines</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<h2>Add Machinery</h2>
<form action="../AddMachine" method="post" enctype="multipart/form-data">
<div class="form-group">
NAME:<input type="text" name="mname" class="form-control">
</div>

<div class="form-group">
ENGINEHP:<input type="text" name="enginehp" class="form-control">
</div>

<div class="form-group">
RATEDRPM:<input type="text" name="ratedrpm" class="form-control">
</div>

<div class="form-group">
GEARS:<input type="text" name="gears" class="form-control">
</div>

<div class="form-group">
SPEED:<input type="text" name="speed" class="form-control">
</div>

<div class="form-group">
FRONT-TYRE:<input type="text" name="fronttype" class="form-control">
</div>

<div class="form-group">
REAR-TYRE:<input type="text" name="reartype" class="form-control">
</div>

<div class="form-group">
LIFT CAPACITY:<input type="text" name="liftcap" class="form-control">
</div>

<div class="form-group">
FUEL CAPACITY:<input type="text" name="fuelcap" class="form-control">
</div>


<div class="form-group">
IMAGE:<input type="file" name="image" class="form-control">
</div>
<input type="submit" class="btn btn-info" value="Add Machine" />
<button type="submit" class="btn btn-info"><a style="color:white;" href="viewmachine.jsp">View Machines</a></button>
</form>
</div>

</body>
</html>