<html>
<%@page import="modal.GlobalMap"%>
<%@page import="com.pojo.*"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.DateFormat"%>
<title>Success Order</title>
<head>

<link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
<style type="text/css">
  <%@include file="css/style.css" %>
</style>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
<a class="dropdown-toggle" data-toggle="dropdown" href="#">OUR ARTCILE <span class="caret"></span></a>
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
</nav><br><br><br>

<h2 style="color:red;text-align:center;">CONGRATULATIONS!!</h2>
<h3 style="color:red;text-align:center;">Your Order Has Been Placed</h3><br>

<div class="container-fluid">
<div class="row">
<div class="col-sm-3">              
</div>
<div class="col-sm-6">
<div class="order1">

<div class="modal-content">
<div class="modal-header modal-header1" > 
        
<h4>Order Details</h4>
</div>

<div class="modal-body">

<h5>
<%
Date now = new Date();
Date now1 = new Date();
Date now2 = new Date();
DateFormat currentDate = DateFormat.getDateInstance();
Date addedDate1 = addDays(now1, 10);
Date addedDate2 = addDays(now2, 5);
Purchase p= new Purchase();
double grandtotal=(Double)session.getAttribute("grandtotal");
%>

<%!
public static Date addDays(Date d, int days)
{
    d.setTime(d.getTime() + days * 1000 * 60 * 60 * 24);
    return d;
}
%>

<strong>ORDER DATE:</strong> <%=currentDate.format(now) %> <br><br>
<strong>GRAND TOTAL: Rs</strong> <%=grandtotal%><br><br>
<strong>ESTIMATED DELIVERY DATE:</strong> <%=currentDate.format(addedDate1) %><br><br>
<strong>YOU CAN CANCEL THE ORDER BY:</strong> <%=currentDate.format(addedDate2) %>

</h5> 

<h4 style="text-align:center;text-decoration:underline;"><a href="DisplayProduct.jsp?id=1">CONTINUE SHOPPING</a></h4>

</div>
</div>
</div>
</div>
<div class="col-sm-3"></div>
</div>
</div><br /><br /><br /><br /><br />

<!-- *** COPYRIGHT ***-->
<div id="copyright">
<div class="container-fluid copyright" style="margin-top: 101px;">
<div class="col-md-12">
<h4 class="pull-left copyright copyright1">Copyright © VertiFarmPortalIndia</h4>
</div>
</div>
</div>
<!-- *** COPYRIGHT END *** --> 



</body>
</html>