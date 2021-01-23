<!DOCTYPE html>
<%@page import="com.pojo.*"%>
<%@page import="java.util.List"%>
<%@page import="modal.*"%>

<title>My account</title>
<head>

<style type="text/css">
  <%@include file="css/style.css" %>
</style>

<style>
.nav>li>a {
    position: relative;
    display: block;
    padding: 10px 11px !important;
}
</style>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="abc">
<%  
BLManager bl=new BLManager();
int id=(Integer)session.getAttribute("id");
Register r=bl.getRecordById(id);

List<Purchase> listpur=bl.getorderByid(r);
session.setAttribute("listpur", listpur);

List<Soiltest> list=bl.getsoilByid(r);
session.setAttribute("list", list);

List<Demo> li=bl.getdemoByid(r);
session.setAttribute("li", li);

List<Producttype> listn=bl.getAllProductType();
%>

<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>                        
</button>

<a class="navbar-brand navbar1"><img src="images/vfarmlogo.png" class="logoimg"/></a>
</div>
<div class="collapse navbar-collapse" id="myNavbar">
<ul class="nav navbar-nav">
<li><a class="link-1" href="index.jsp">HOME</a></li>

<li class="dropdown link-1">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">OUR ARTICLE <span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="vfarm.jsp" class="dropdown1">WHY V-FARM</a></li>
<li><a href="hydroponics.jsp" class="dropdown1">HYDROPONICS</a></li>
<li><a href="aeroponics.jsp" class="dropdown1">AEROPONICS</a></li>
<li><a href="aquaponics.jsp" class="dropdown1">AQUAPONICS</a></li>
<li><a href="others.jsp" class="dropdown1">OTHER RELATED..</a></li>
<li><a href="videos.jsp" class="dropdown1">V-FARM VIDEOS</a></li>
</ul>
</li>

<li class="dropdown link-1">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">MATERIALS <span class="caret">
</span></a>
<ul class="dropdown-menu">
<!-- <li><a href="" class="dropdown1">CHEMICALS</a></li> -->
<%for(int i=0;i<1;i++){ %>
<li><a class="link-1" href="DisplayProduct.jsp?id=<%=listn.get(i).getTid() %>"><%=listn.get(i).getProducttype() %></a></li>
<%} %>
<!--<li><a href="ledandlamps.jsp" class="dropdown1">LED GROW LIGHTS AND LAMPS</a></li> -->
<%for(int i=1;i<2;i++){ %>
<li><a class="link-1" href="DisplayProduct.jsp?id=<%=listn.get(i).getTid() %>"><%=listn.get(i).getProducttype() %></a></li>
<%} %>
<!--<li><a href="greenhouseplantsupport.jsp" class="dropdown1">GREENHOUSE PLANT SUPPORT</a></li> -->
<%for(int i=2;i<3;i++){ %>
<li><a class="link-1" href="DisplayProduct.jsp?id=<%=listn.get(i).getTid() %>"><%=listn.get(i).getProducttype() %></a></li>
<%} %>
<!--  <li><a href="coir.jsp" class="dropdown1">COIR</a></li> -->
<%for(int i=3;i<4;i++){ %>
<li><a class="link-1" href="DisplayProduct.jsp?id=<%=listn.get(i).getTid() %>"><%=listn.get(i).getProducttype() %></a></li>
<%} %>
</ul>
</li>

<!--<li><a class="link-1" href="machine.jsp"> MACHINERY</a></li>-->
<%for(int i=6;i<7;i++){ %>
<li><a href="DisplayProduct.jsp?id=<%=listn.get(i).getTid() %>"><%=listn.get(i).getProducttype() %></a></li>
<%} %>
<li><a class="link-1" href="demo1.jsp">MACHINE DEMO</a></li>
<li><a class="link-1" href="soiltest.jsp">RENTING</a></li>
<li><a class="link-1" href="contact.jsp"> CONTACT</a></li>
<li><a class="link-1" href="ShowCart1.jsp"><i class="fa fa-shopping-cart" style="font-size:24px"></i> <span class="badge" ><%=GlobalMap.Cartvalue.size()%></span></a></li>

<ul class="nav navbar-nav navbar-right">

<% String nm=(String)session.getAttribute("name");
if(nm==null)
{
%>
<li><a class="link-1" href="registration.jsp"><span class="glyphicon glyphicon-user"></span> BE A MEMBER</a></li>
<%}
else
{
%>
<li class="active"><a class="link-1" href="myaccount.jsp"><span class="glyphicon glyphicon-user"></span> MY ACCOUNT</a></li>
<%} %>

<% String name=(String)session.getAttribute("name");
if(name==null)
{
%>
<li><a class="link-1" href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
<%}
else
{
%>
<li><a class="link-1" href="Logout"><span class="glyphicon glyphicon-log-in"></span> LOGOUT</a></li>
<%} %>

</ul>
</div>
</div>
</nav><br><br><br>

<div class="container-fluid">
<h2 style="color: red;">Welcome <%=r.getName()%></h2>
  
<ul class="nav nav-tabs">
<li class="active"><a data-toggle="tab" class="fa fa-user" href="#profile"> MY PROFILE</a></li>
<li><a data-toggle="tab" class="fa fa-tree" href="#soil"> RENT REQUEST</a></li>
<li><a data-toggle="tab" class="fa fa-cogs" href="#demo"> DEMO REQUEST</a></li>
<li><a data-toggle="tab" class="fa fa-shopping-bag" href="#order"> MY ORDERS</a></li>
</ul>

<div class="tab-content">
<div id="profile" class="tab-pane fade in active">
<center><i style="margin-top:30px;font-size:54px;" class="fa fa-user-circle-o"></i></center>
<h3 style="margin-top:10px;"><center><%=r.getEmail()%></center></h3>
<div class="row">
<div style="height:400px;" class="col-sm-12"><br>
<ul style="list-style-type:none;font-size:18px;margin-left:530px;">

<li><strong>PERSONAL DETAILS</strong></li>
<li><i class="fa fa-user" style="margin-top:10px;font-size:24px"></i> <%=r.getName()%></li>
<li><i class="fa fa-phone" style="margin-top:10px;font-size:24px"></i> <%=r.getPhone()%></li> 
<li><i class="fa fa-venus" style="margin-top:10px;font-size:24px"></i> <%=r.getGender()%></li> 	
<li><i class="fa fa-map-marker" style="margin-top:10px;font-size:24px"></i> <%=r.getAddress()%></li> 
<li>&nbsp;&nbsp;&nbsp;&nbsp;<%=r.getCity()%></li>
<li>&nbsp;&nbsp;&nbsp;&nbsp;<%=r.getState()%></li>
<li>&nbsp;&nbsp;&nbsp;&nbsp;<%=r.getPincode()%></li>

</ul>
</div>    
</div>
<div class="row">
<div class="col-sm-12">
<center><button class="btn btn-primary" style="position:relative;bottom:90px;right:10px"><a style="color:white;" href="UpdateRecord?id=<%=id%>">Update Profile</a></button></center>
</div></div>
</div>
   
<div id="soil" class="fade">
<br><br> 
<div class="container">
<div class="panel panel-default">
<div class="panel-heading" style="font-size:18px;"><center><strong>RENT INFORMATION</strong><center></div>
<div class="panel-body">
<table id="mytable" class="table table-striped table-bordered table-hover">           
<thead>
<tr>
<th>Rent Date</th>
<th>Phone</th>  
<th>Address</th>
<th>Machine Name</th>

</tr>
</thead>
<tbody>
<%for(int i=0;i<list.size();i++){ %><tr>
<td><%=list.get(i).getSoildate() %></td>  
<td><%=list.get(i).getPhone() %></td>
<td><%=list.get(i).getAddress() %></td>  
<td><%=list.get(i).getSoiltype() %></td> 
</tr> 
<%} %>

</tbody>
</table>  
</div>
</div>
</div> 
  
<script src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>

<script type="text/javascript">
		$('#mytable').DataTable();
	</script>
      
</div>

<div id="order" class="fade">
<br><br> 
<div class="container">
<div class="panel panel-default" style="position:relative;bottom:350px;">
<div class="panel-heading" style="font-size:18px;"><center><strong>ORDER INFORMATION</strong><center></div>
<div class="panel-body">
<table id="mytable2" class="table table-striped table-bordered table-hover">           
<thead>
<tr>
<th>Order Date</th>
<th>Phone</th>  
<th>Address</th>
<th>Product</th>
<th>Quantity</th>
<th>Total Price</th>
<th>Cancel Order</th>

</tr>
</thead>
<tbody>
<%for(int i=0;i<listpur.size();i++){ %><tr>
<td><%=listpur.get(i).getPurdate() %></td>  
<td><%=listpur.get(i).getPhone() %></td>
<td><%=listpur.get(i).getAddress() %></td>  
<td><%=listpur.get(i).getProduct().getPname() %></td>  
<td><%=listpur.get(i).getPquantity()%></td> 
<td><%=listpur.get(i).getTotprice()%></td> 
<td><button class="btn btn-sm btn-danger" style="margin-top: 10px;"><a style="color:white;" href="Cancelorder?id=<%=listpur.get(i).getPurid()%>"><i class="fa fa-remove"></i></a></button></td>
</tr> 
<%} %>

</tbody>
</table>  
</div>
</div>
</div> 

<script type="text/javascript">
		$('#mytable2').DataTable();
	</script>
      
</div>
    
    
<div id="demo" class="tab-pane fade">

<div class="container" >
<div class="panel panel-default" style="position:relative;bottom:650px;">
<div class="panel-heading" style="font-size:18px;"><center><strong>DEMO REQUEST INFORMATION</strong><center></div>
<div class="panel-body">
<table id="mytable1" class="table table-striped table-bordered table-hover">           
<thead>
<tr>
<th>Machine Name</th>
<th>Demo Request Date</th>
<th>Phone</th>  
<th>Address</th>
</tr>
</thead>
<tbody>
<%for(int i=0;i<li.size();i++){ %><tr>
<td>Rolling Greenhouse Benches</td>
<td><%=li.get(i).getDemodate() %></td>
<td><%=li.get(i).getPhone()%></td>
<td><%=li.get(i).getAddress() %></td>  

</tr> 
<%} %>

</tbody>
</table>  
</div>
</div>
</div> 
  
</div>

</div>
</div>
<script type="text/javascript">
		$('#mytable1').DataTable();
	</script>
	
<!-- *** COPYRIGHT ***-->
<div id="copyright">
<div class="container-fluid copyright">
<div class="col-md-12">
<h4 class="pull-left copyright copyright1">Copyright © VertiFarmPortalIndia</h4>
</div>
</div>
</div>
<!-- *** COPYRIGHT END *** -->
</body>
</html>