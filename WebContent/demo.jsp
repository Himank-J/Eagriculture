<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.LocalDateTime, java.time.format.DateTimeFormatter"%>
<%@ page import="java.util.*"%>
<%@page import="modal.*"%>
<%@page import="com.pojo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="bootstrap.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

<title>Demo Request</title>
<script>
function valid()
{
	var phone=document.getElementById("farmer_phone").value;
	if(phone=="" || phone==null || phone.length!=10 || isNaN(phone))
	{
		document.getElementById("msg1").innerHTML="Please Enter the 10 Digit Phone Number";
		return false;
	}
	else
	{
		document.getElementById("msg1").innerHTML="";
	}
	var address=document.getElementById("farmer_address").value;
	if(address=="" || address==null)
	{
		document.getElementById("msg2").innerHTML="Please Enter proper Address";
		return false;
	}
	else
	{
		document.getElementById("msg2").innerHTML="";
	}
}

</script>

<script>
$(document).ready(function(){
    $("input").focus(function(){
        $(this).css("background-color", "lightgrey");
    });
    $("input").blur(function(){
        $(this).css("background-color", "white");
    });
});
$(document).ready(function(){
    $("textarea").focus(function(){
        $(this).css("background-color", "lightgrey");
    });
    $("textarea").blur(function(){
        $(this).css("background-color", "white");
    });
});
</script>

</head>
<body class="abc">
<%
BLManager bl=new BLManager();
List<Machinery> list=bl.getallMachinery();
List<Producttype> listn=bl.getAllProductType();
session.setAttribute("list", list);
%>
<%
Machinery machinery=(Machinery)session.getAttribute("Machine");
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
<a class="dropdown-toggle" data-toggle="dropdown" href="#">OUR ARTICLES <span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="vfarm.jsp" class="dropdown1">WHY V-FARM?</a></li>
<li><a href="hydroponics.jsp" class="dropdown1">HYDROPONICS</a></li>
<li><a href="aeroponics.jsp" class="dropdown1">AEROPONICS</a></li>
<li><a href="aquaponics.jsp" class="dropdown1">AQUAPONICS</a></li>
<li><a href="others.jsp" class="dropdown1">SUGARCANE</a></li>
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

<li class="active"><a class="link-1" href="machine.jsp"> MACHINERY</a></li>
<%for(int i=6;i<7;i++){ %>
<li><a href="DisplayProduct.jsp?id=<%=listn.get(i).getTid() %>"><%=listn.get(i).getProducttype() %></a></li>
<%} %>
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
<li><a class="link-1" href="myaccount.jsp"><span class="glyphicon glyphicon-user"></span> MY ACCOUNT</a></li>
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
</nav>
<br><br><br><br><br>

<div class="row">
<div style="height:400px;" class="col-sm-6">
<ul class="list-group demolist">
  <li class="list-group-item"><strong>NAME: </strong><%=machinery.getMname() %></li>
  <li class="list-group-item"><strong>ENGINE HP: </strong><%=machinery.getEnginehp() %></li>
  <li class="list-group-item"><strong>RATED RPM: </strong><%=machinery.getRatedrpm() %></li>
  <li class="list-group-item"><strong>GEARS: </strong><%=machinery.getGears() %></li>
  <li class="list-group-item"><strong>SPEED: </strong><%=machinery.getSpeed() %></li>
  <li class="list-group-item"><strong>FRONT TYPE: </strong><%=machinery.getFronttype() %></li>
  <li class="list-group-item"><strong>REAR TYPE: </strong><%=machinery.getReartype() %></li>
  <li class="list-group-item"><strong>LIFT CAPACITY: </strong><%=machinery.getLiftcap() %></li>
  <li class="list-group-item"><strong>FUEL CAPACITY: </strong><%=machinery.getFuelcap() %></li>
</ul>

</div><br />

<div style="height:400px;" class="col-sm-6">

<div class="container-fluid">
<div class="row" style="margin-right:20px;">
<div class="col-sm-12">
<div class="demo1">

<div class="modal-content">
<div class="modal-header modal-header1" >
           
<h4>Demo Request Fill Up Form</h4>
</div>

<div class="modal-body">
<form onsubmit="return valid()" action="DemoM" method="post">

<div class="form-group">
<label for="farmer_date" style="color:black;">DEMO REQUEST DATE</label>
<%
 Date date=new Date();
 LocalDateTime now=LocalDateTime.now();
%>
<input type="text" class="form-control" id="farmer_date" name="demodate" readonly="readonly" value="<%= DateTimeFormatter.ofPattern("yyyy/MM/dd").format(now)%>"/>
</div>
              
<div class="form-group">
<label for="farmer_phone" style="color:black;">PHONE</label>
<b class="req_field" id="msg1">*</b>
<input type="text" class="form-control" placeholder="Enter Phone-Number" id="farmer_phone" name="phone"/>
</div>

<div class="form-group">
<label for="farmer_address" style="color:black;">FARMER ADDRESS
</label>
<b class="req_field" id="msg2">*</b>
<textarea class="form-control" placeholder="Enter Address" 
id="farmer_address" name="address" rows="2"></textarea>
</div>


<button type="submit" class="btn btn-danger reg_btn1 ">SUBMIT</button>
               
</form>
</div>
</div>
</div>
</div> 
</div>
</div>

</div>
</div><br /><br /><br /><br />

<!-- *** COPYRIGHT ***-->
<div id="copyright">
<div class="container-fluid copyright" style="margin-top:2.5px;">
<div class="col-md-12">
<h4 class="pull-left copyright copyright1">Copyright © VertiFarmPortalIndia</h4>
</div>
</div>
</div>
<!-- *** COPYRIGHT END *** -->

</body>
</html>