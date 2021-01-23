<%@page import="com.pojo.Contact"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view feedback</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
  <script type="text/javascript" src="cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <style type="text/css">
  
  </style>
</head>  
<body>   
  
<h1><center>Contact List</center></h1>   
<%  
BLManager bl=new BLManager();
List<Contact> list=bl.getContacts();
%>  
   
<div class="container">
<div class="panel panel-default">
<div class="panel-heading"><center>Contact Information<center></div>
<div class="panel-body">
<table id="mytable" class="table table-striped table-bordered table-hover">           
<thead>
<tr>
<th>Name</th>
<th>Email</th>  
<th>Comment</th>
<th>Action</th>

</tr>
</thead>
<tbody>
<%for(int i=0;i<list.size();i++)
{ %> 
<tr>
<td><%=list.get(i).getCname()%></td>  
<td><%=list.get(i).getCemail()%></td>
<td><%=list.get(i).getComment()%></td>  
<td><button class="btn btn-danger"><a style="color:white;" href="../deleteContact?id=<%=list.get(i).getCid()%>"><i class="glyphicon glyphicon-trash"></i></a></button></td>

</tr>  
<% } %>
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