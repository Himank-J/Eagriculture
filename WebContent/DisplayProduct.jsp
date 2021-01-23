<%@page import="modal.GlobalMap"%>
<%@page import="java.util.Base64"%>
<%@page import="com.pojo.*"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

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

<style>
.p
{
	font-family:'Times New Roman', Times, serif;
}
.h3
{
	font-family:'Times New Roman', Times, serif;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>

<body class="abc">
<%
BLManager bl=new BLManager();
int id=Integer.parseInt(request.getParameter("id"));
session.setAttribute("pid", id);
Producttype p=bl.getProductbyTypeID(id);
List<Product> prod=bl.getProductByType(p);
List<Producttype> list=bl.getAllProductType();
%>
<%int size=GlobalMap.Cartvalue.size();%>

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
<li><a class="link-1" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>"><%=list.get(i).getProducttype() %></a></li>
<%} %>
<!--<li><a href="ledandlamps.jsp" class="dropdown1">LED GROW LIGHTS AND LAMPS</a></li> -->
<%for(int i=1;i<2;i++){ %>
<li><a class="link-1" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>"><%=list.get(i).getProducttype() %></a></li>
<%} %>
<!--<li><a href="greenhouseplantsupport.jsp" class="dropdown1">GREENHOUSE PLANT SUPPORT</a></li> -->
<%for(int i=2;i<3;i++){ %>
<li><a class="link-1" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>"><%=list.get(i).getProducttype() %></a></li>
<%} %>
<!--  <li><a href="coir.jsp" class="dropdown1">COIR</a></li> -->
<%for(int i=3;i<4;i++){ %>
<li><a class="link-1" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>"><%=list.get(i).getProducttype() %></a></li>
<%} %>
</ul>
</li>

<!--<li><a class="link-1" href="machine.jsp"> MACHINERY</a></li>-->
<%for(int i=6;i<7;i++){ %>
<li><a href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>"><%=list.get(i).getProducttype() %></a></li>
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
</nav><br>

<%for(int i=0;i<prod.size();i++){ %>
<div class="container-fluid">
<div class="row">

<div class="col-sm-3"><br /><br />
<img src="data:imgae/png;base64,<%=Base64.getEncoder().encodeToString(prod.get(i).getImage())%>" width="300px" height="360px;"/>
</div>

<div class="col-sm-9"><br /><br >
<h3><strong><%=prod.get(i).getPname() %></strong></h3>
<p><%=prod.get(i).getPdescription() %></p>     
<p>Product Price: <%=prod.get(i).getPrice() %></p>
<%if(prod.get(i).getTotquantity()<1)
{%>
<h2>Stock is not Available</h2>
<%} 
else
{ %>    
      <p>Product Stock: <%=prod.get(i).getTotquantity() %></p>
<%} %>
</div>

</div>

<br>
<div class="row">
<div class="col-sm-12"> 
<a href="AddToCart?id=<%=prod.get(i).getPid()%>" class="btn btn-danger">BUY NOW</a>
</div>
</div>

</div><%} %>
<br >
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