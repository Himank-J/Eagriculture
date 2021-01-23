<%@page import="com.pojo.*"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Orders</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
  <script type="text/javascript" src="cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <style type="text/css">
  
  </style>
</head>  
<body>   
  
<h1><center>Orders</center></h1>   
<%  
BLManager bl=new BLManager();
List<Purchase> list=bl.getallorders();
session.setAttribute("list", list);
%>  
   
<div class="container">
<div class="panel panel-default">
<div class="panel-heading"><center>Order Information<center></div>
<div class="panel-body">
<table id="mytable" class="table table-striped table-bordered table-hover">           
<thead>
<tr>
<th>Purchase Date</th>
<th>Product Name</th>
<th>Member Name</th>
<th>Email</th>
<th>Phone</th>  
<th>Address</th>
<th>Total Price</th>
<th>Action</th>

</tr>
</thead>
<tbody>
<c:forEach items="${list}" var="list">
<tr>
<td>${list.getPurdate()}</td> 
<td>${list.product.getPname()}</td>  
<td>${list.register.getName() }</td>
<td>${list.register.getEmail() }</td>
<td>${list.getPhone()}</td>
<td>${list.getAddress()}</td>
<td>${list.getTotprice()}</td>

<td><button class="btn btn-danger"><a style="color:white;" href="../deleteOrder?id=${list.getPurid()}"><i class="glyphicon glyphicon-trash"></i></a></button></td>
</tr> 
</c:forEach> 
</tbody>
</table>  
</div>
</div>
</div> 
  
<script src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
<script src="js/essential-plugins.js"></script>
<script src="js/plugins/pace.min.js"></script>

<script type="text/javascript">
		$('#mytable').DataTable();
	</script>

</body>  
</html>  