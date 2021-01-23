<%@page import="com.pojo.Producttype"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product Type</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
		<div class="col-sm-6">
			<h3>PRODUCT TYPE</h3>
				<form action="../Addproducttype" method="post">
					<div class="form-group"><br>
						PRODUCT TYPE:<input type="text" name="ptype" class="form-control">
					</div>
					<div class="form-group">
						<button type="submit" name="submit" value="Add Product" class="btn btn-sm btn-info">ADD PRODUCT TYPE</button>
					</div>
				</form>
			
			</div>
		</div>
	</div><br>
	
	<%
	BLManager bl=new BLManager();
	List<Producttype> list=bl.getAllProductType();
	%>
	<div class="container">
	<div class="row">
	<div class="col-sm-10">
	<h3>VIEW PRODUCT TYPE</h3>
		<div class="panel panel-default">
			<div class="panel-heading">
				<center>PRODUCT TYPE INFORMATION</center>
			</div>
			<div class="panel-body">
				<table id="mytable"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>ID</th>
							<th>Product Type</th>
							<th>Action</th>

						</tr>
					</thead>
					<tbody>
						<%
							for (int i = 0; i < list.size(); i++) {
						%>
						<tr>
							<td><%=list.get(i).getTid()%></td>
							<td><%=list.get(i).getProducttype()%></td>
							<td>
									<a class="btn btn-success" style="color: white;" href="../UpdateProducttype?id=<%=list.get(i).getTid()%>"><i class="glyphicon glyphicon-edit "></i></a>
							</td>

						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
		</div></div>
	</div>
	<br />
	

	<script src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
	

	<script type="text/javascript">
		$('#mytable').DataTable();
	</script>
	
</body>
</html>