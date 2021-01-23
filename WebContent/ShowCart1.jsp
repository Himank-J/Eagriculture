<%@page import="java.util.*"%>
<%@page import="com.pojo.*"%>
<%@page import="modal.*"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet" href="css/cartstyle.css">
<style type="text/css">
  <%@include file="css/style.css" %>
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.nav>li>a {
    position: relative;
    display: block;
    padding: 10px 11px !important;
}
</style>

</head>
<body class="abc">
<%
BLManager bl=new BLManager();
List<Producttype> list=bl.getAllProductType();
double subtotal=0;
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
<li><a class="link-1" href="demo1.jsp">MACHINE DEMO</a></li>>
<li><a class="link-1" href="soiltest.jsp">RENTING</a></li>
<li><a class="link-1" href="contact.jsp"> CONTACT</a></li>
<li class="active"><a class="link-1" href="ShowCart1.jsp"><i class="fa fa-shopping-cart" style="font-size:24px"></i> <span class="badge" ><%=GlobalMap.Cartvalue.size()%></span></a></li>

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

<%
Map<Product,Integer> product=(Map<Product,Integer>)session.getAttribute("product");
%>

<h1 style="margin-top: 60px;">Shopping Cart</h1>
<div class="shopping-cart">

  <div class="column-labels">
    <label class="product-image">Image</label>
    <label class="product-details">Product</label>
    <label class="product-price">Price</label>
    <label class="product-quantity">Quantity</label>
    <label class="product-removal">Remove</label>
	<label class="product-line-price">Total</label>
 </div>

<%if(name==null)
{%> 
<%for(Map.Entry<Product,Integer> m:GlobalMap.Cartvalue.entrySet()){ %> 
   <%
   System.out.println("name=null"+GlobalMap.Cartvalue.size()); %>
  <div class="product">
  
    <div class="product-image">
      <img src="data:image/png;base64,<%=Base64.getEncoder().encodeToString(m.getKey().getImage())%>">
    </div>
 	<div class="product-details">
      <div class="product-title"><%=m.getKey().getPname() %></div>
    </div>
    <div class="product-price"><%=m.getKey().getPrice() %></div>
   
    <form action="Updatecart" method="get">
			<input type="hidden" value="<%=m.getKey().getPid() %>" name="id" >
				 <div class="product-quantity">
					<input type="number" name="qty" value="<%=m.getValue()%>" min="1">
				</div>
				<div>
					<button	class="btn btn-sm btn-success"> 
					<span class="glyphicon glyphicon-refresh"></span>
					</button>
				</div>
			</form>

    <div class="product-removal">
      <button class="btn btn-sm btn-danger" style="margin-top: 10px;"><a style="color:white;" href="deletecart?id=<%=m.getKey().getPid()%>"><i class="glyphicon glyphicon-trash"></i></a></button>
   
    </div>
   <div class="product-line-price"><%=m.getKey().getTotalprice()%></div>
  </div>
  
  <%
  	subtotal=m.getKey().getTotalprice();
	%> 
 
<%}
double taxRate = 0.05;
double tax = subtotal * taxRate;
double shipping=15.00;
double grandtotal= subtotal+shipping+tax;
session.setAttribute("grandtotal", grandtotal);
}

else{%>
	
	<%
	int id=(Integer)session.getAttribute("id");
	System.out.println("name is not equal null"+GlobalMap.Cartvalue.size());
	%>
	
<%for(Map.Entry<Product,Integer> m1:GlobalMap.Cartvalue.entrySet()){ %> 
   
  <div class="product">
  <div class="product-image">
      <img src="data:image/png;base64,<%=Base64.getEncoder().encodeToString(m1.getKey().getImage())%>">
    </div>
 	<div class="product-details">
      <div class="product-title"><%=m1.getKey().getPname() %></div>
    </div>
    <div class="product-price"><%=m1.getKey().getPrice() %></div>
   
    <form action="Updatecart" method="get">
			<input type="hidden" value="<%=m1.getKey().getPid() %>" name="id" >
				 <div class="product-quantity">
					<input type="number" name="qty" value="<%=m1.getValue()%>" min="1">
				</div>
				<div>
					<button	class="btn btn-sm btn-success"> 
					<span class="glyphicon glyphicon-refresh"></span>
					</button>
				</div>
			</form>

    <div class="product-removal">
      <button class="btn btn-sm btn-danger" style="margin-top: 10px;"><a style="color:white;" href="deletecart?id=<%=m1.getKey().getPid()%>"><i class="glyphicon glyphicon-trash"></i></a></button>
   
    </div>
   <div class="product-line-price"><%=m1.getKey().getTotalprice()%></div>
  </div>
  
  <%
  	subtotal=subtotal+m1.getKey().getTotalprice();
	%>
	
  <%} %> 
  
<%	
	double taxRate = 0.05;
	double tax = subtotal * taxRate;
	double shipping=15.00;
	double grandtotal= subtotal+shipping+tax;
	System.out.println("Shital total"+grandtotal);
	session.setAttribute("grandtotal", grandtotal);	
	session.setAttribute("product", GlobalMap.Cartvalue);
%>
<%}%>

  <div class="totals">
    <div class="totals-item">
      <label>Subtotal</label>
      <div class="totals-value" id="cart-subtotal">00.00</div>
    </div>
    <div class="totals-item">
      <label>Tax (5%)</label>
      <div class="totals-value" id="cart-tax">00</div>
    </div>
    <div class="totals-item">
      <label>Shipping</label>
      <div class="totals-value" id="cart-shipping">00</div>
    </div>
    <div class="totals-item totals-item-total">
      <label>Grand Total</label>
      <div class="totals-value" id="cart-total">00</div>
    </div>
  </div>
    <button class="checkout"><a style="color:white;" href="Checkout">Proceed</a></button>  
</div>
	
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script  src="js/cartindex.js"></script>

</body>
</html>