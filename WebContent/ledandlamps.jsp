<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="com.pojo.Producttype"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Led and Lamps</title>
<!-- Latest compiled and minified CSS -->
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

<li class="dropdown link-1 active">
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
</ul>

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
</nav><br><br><br />

<div class="container-fluid" style="margin-top:-20px;">
<div class="row">
<div class="col-sm-3"><br /><br />
<img src="images/mahycojowar.jpg" class="bajraimg1"/>
</div>
<div class="col-sm-9"><br />
<h3><strong class="ab1">MAHYCO CALIBRE BAJRA(MRB-204)</strong></h3>
<p class="ab1 bajrapara1">Suitable for all well drained, light to medium soil types. This hybrid bajra calibre has compact earhead with big and attractive grains.</p>
<p>
<p class="ab1 bajrapara12">It is known for its excellent chapati making and good fodder quality.</p>
<p>
<ul class="ab1 bajralist1">
<li>Height: Medium Tall (205-215cm)</li>
<li>Flowering Time: Kharif 58-60 Days,Rabi 110-115 Days</li>
<li>Grain Quality Bold round lustrous Grain</li>
<li>Vajra</li>
<li>Kaveri 68 (Pipeline)</li>
</ul>
</p>           
</div>
</div></div>
       
<div class="row">
<div class="col-sm-12"> 
<a href="#"class="btn btn-danger bajrabtn1">BUY NOW</a>
</div>
</div>

<div class="container-fluid">
<div class="row" style="margin-top:10px;">
<div class="col-sm-3">

<img src="images/jowarkrus.png" class="bajraimg2" />
</div>
<div class="col-sm-9">
<h3><strong class="ab1" >JAWAR KRISHNA-NSH 54</strong></h3>
<p class="ab1 wfont">MRB-2240 Bajra Hybrid Suitable for all well drained, light to medium soil types. </p>     
<p class="ab1 wfont">This hybrid bajra has compact earheads and it also gives good fodder quality.</p>
<p>
<ul class="ab1 wfont">
<li>Good Quality Fodder & Grain</li>
<li>Tollrant to Drought & Lodging</li>
<li>Tolance To aphid incidence</li>
<li>Suitable For Kharif Season</li>
<li>Unsuitable For Sowing in highkly cold areas</li>
</ul>
</p>            
</div>
</div></div>
        
<div class="row">
<div class="col-sm-12"><br />
<a href="#"class="btn btn-danger bajrabtn2">BUY NOW</a>
</div>
</div>

<div class="container-fluid" style="margin-top:3px;">
<div class="row">
<div class="col-sm-3">
<img src="images/maize.jpg" class="bajraimg2" />
</div>
<div class="col-sm-9">
<h3><strong class="ab1">MAHYCO MAIZE MRM-3838</strong></h3>
<p class="ab1 wfont">Suitable for all well drained soil types. This hybrid maize has long and big cobs that have attractive orange color grains. </p>
<p class="ab1 wfont">It is known for its good quality green fodder.</p>
<p>
<ul class="ab1 wfont">
<li>Duration: Kharif 90-150 Days</li>
<li>Plant Height : 230-240cm</li>
<li>Cob Length: 18-20 Cm</li>
<li>No.Of rows/cobs : 14-16</li>
<li>No.Of Grains/Row: 40-42</li>
</ul>
</p>
                   
</div>
</div></div>
       
<div class="row">
<div class="col-sm-12">
<a href="#"class="btn btn-danger bajrabtn3">BUY NOW</a>
</div>
</div>

<br />
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
