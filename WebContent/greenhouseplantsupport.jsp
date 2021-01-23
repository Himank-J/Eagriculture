<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="modal.GlobalMap"%>
<%@page import="com.pojo.Producttype"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Greenhouse and Plants Support</title>
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

<li class="dropdown link-1 active">
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

<div class="container-fluid" style="margin-top:-18px;">
<div class="row">
<div class="col-sm-3"><br />
<img src="images/Sunflower.png" class="sunimg1"/>
</div>
<div class="col-sm-9"><br />
<h3><strong class="ab1 sunheading1">SUNFLOWER HYBRID MSFH-17</strong></h3>
<p class="ab1 sunpara1">Suitable for all well drained soil types .This hybrid variety is high yielding with bigger heads and brown coloured grains (striped). Sunflower There are many varieties of rice and culinary preferences tend to vary regionally. For example in India, there is a saying that "grains of rice should be like two brothers, close but not stuck together" while in the Far East there is a preference for softer, stickier varieties. Because of its importance as a staple food, rice has considerable cultural importance. For example, rice is first mentioned in the Yajur Veda and then is frequently referred to in Sanskrit texts. Rice is often directly associated with prosperity and fertility.</p>
<p>
<ul class="ab1 sunlist1">
<li>Kaveri 678(Leader)</li>
<li>Kaveri 618 Extra</li>
<li>Kaveri 7049(Champ)</li>
<li>KSHF 7032(Sukranti)</li>
<li>Kaveri 9004</li>
</ul></p>           
</div>
</div></div>
       
<div class="row">
<div class="col-sm-12"> 
<a href="#"class="btn btn-danger sunbtn1">BUY NOW</a>
</div>
</div>

<div class="container-fluid">
<div class="row">
<div class="col-sm-3">

<img src="images/paddy-packetskaveri.jpg" class="sunimg2"/>
</div>
<div class="col-sm-9"><br />
<h3><strong class="ab1 sunheading2">MONSOON/KAVERI SUNFLOWER SEEDS</strong></h3>
<p class="ab1 sunpara2">We are offering a wide range of Sunflower Seeds - Sun Gold to our valued clients. These Flower seeds grows up to perfect bunch of flowers with high foliage rate and proper germination.</p>     
<p>
<ul class="ab1 sunlist2">
<li>Plant Height: 108-190cm</li>
<li>Harvesting: 110-115 Days</li>
<li>Flower Size: 20-22Cm</li>
<li>KSHF 7032(Sukranti)</li>
<li>Oil: 42-45%</li>
</ul></p>           
</div>
</div></div>
        
<div class="row">
<div class="col-sm-12">
<a href="#"class="btn btn-danger sunbtn2">BUY NOW</a>
</div>
</div>

<!-- *** COPYRIGHT ***-->
<div id="copyright">
<div class="container-fluid copyright copyrights">
<div class="col-md-12">
<h4 class="pull-left copyright copyright1">Copyright © VertiFarmPortalIndia</h4>
</div>
</div>
</div>
<!-- *** COPYRIGHT END *** -->  

</body>
</html>
