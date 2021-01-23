<!DOCTYPE html>
<%@page import="com.pojo.*"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<head>
<title>Add Products</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<h2>Add Products</h2>
<form action="../AddProduct" method="post" enctype="multipart/form-data">
<div class="form-group">
NAME:<input type="text" name="pname" class="form-control">
</div>

<div class="form-group">
DESCRIPTION:<textarea class="form-control" name="pdescription" rows="5"></textarea>
</div>

<div class="form-group">
PRICE:<input type="text" name="price" class="form-control">
</div>

<div class="form-group">
TOTAL QUANTITY:<input type="text" name="totquantity" class="form-control">
</div>

<div class="form-group">
PRODUCT TYPE:<select name="type" class="form-control">
					<%
						BLManager bl = new BLManager();
						List<Producttype> list = bl.getAllProductType();
						for (int i = 0; i < list.size(); i++) {
					%>
					<option><%=list.get(i).getProducttype()%></option>
					<%
						}
					%>
				</select>
</div>

<div class="form-group">
IMAGE:<input type="file" name="image" class="form-control">
</div>
<input type="submit" class="btn btn-info" value="Add Product" />
<button type="submit" class="btn btn-info"><a style="color:white;" href="viewproduct.jsp">View Products</a></button>
</form>
</div>

</body>
</html>