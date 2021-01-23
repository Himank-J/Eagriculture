<%@page import="java.util.Base64"%>
<%@page import="com.pojo.*"%>
<%@page import="java.util.List"%>
<%@page import="modal.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Machinary</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>

<!-- jQuery library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
  <%@include file="css/style.css" %>
</style>
<style>
#name 
{
    text-decoration:none;
    color:black;
}
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
List<Machinery> list=bl.getallMachinery();
session.setAttribute("list", list);
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
<a class="dropdown-toggle" data-toggle="dropdown" href="#">OUR ARTICLES <span class="caret"></span></a>
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
<br /><br />
<div class="container-fluid">
<h2 style="text-align:center;">TRACTORS</h2>
<div class="rows">

<div class="col-sm-2"></div>
<%for(int i=0;i<7;i++){ %>
<div class="col-sm-2"style="text-align:center;">
<h4><%=list.get(i).getEnginehp() %> ENGINE HP</h4>
<a href="MachineDetails?id=<%=list.get(i).getMid()%>"><div class="img" ><img src="data:image/png;base64,<%=Base64.getEncoder().encodeToString(list.get(i).getImage())%>" width="150px" height="150px" /></div></a>
<h4 style="text-align:center;"><a href="demo.jsp" id="name"><%=list.get(i).getMname() %></a></h4><br/>
</div><%} %> 
</div>
</div>

<div class="container-fluid">
<h2 style="text-align:center;">IMPLEMENTS</h2>
<div class="rows">

<div class="col-sm-2"></div>
<%for(int i=7;i<8;i++){ %>
<div class="col-sm-4">
<a href="MachineDetails?id=<%=list.get(i).getMid()%>"><div class="img"><img src="data:image/png;base64,<%=Base64.getEncoder().encodeToString(list.get(i).getImage())%>" width="370px" height="250px" /></div></a>
<h4 style="margin-left:120px;"><a href="demo.jsp" id="name"><%=list.get(i).getMname() %></a></h4>
<br />
</div><%} %>

<div class="col-sm-2"></div>
<%for(int i=8;i<9;i++){ %>
<div class="col-sm-4">
<a href="MachineDetails?id=<%=list.get(i).getMid()%>"><div class="img" style="position: relative; right:100px;"><img src="data:image/png;base64,<%=Base64.getEncoder().encodeToString(list.get(i).getImage())%>" width="370px" height="250px" /></div></a>
<h4><a href="demo.jsp" id="name"><%=list.get(i).getMname() %></a></h4>
</div><%} %>
         
</div>
</div>

<div class="container-fluid">
<div class="rows">
            
<div class="col-sm-2"></div>
<%for(int i=9;i<10;i++){ %>
<div class="col-sm-4">
<a href="MachineDetails?id=<%=list.get(i).getMid()%>"><div class="img"><img src="data:image/png;base64,<%=Base64.getEncoder().encodeToString(list.get(i).getImage())%>" width="370px" height="250px" /></div></a>
<h4 style="margin-left:90px;"><a href="demo.jsp" id="name"><%=list.get(i).getMname() %></a></h4>

</div><%} %>
            
<div class="col-sm-2"></div>
<%for(int i=10;i<11;i++){ %>
<div class="col-sm-4">
<a href="MachineDetails?id=<%=list.get(i).getMid()%>"><div class="img" style="position: relative; right:100px;"><img src="data:image/png;base64,<%=Base64.getEncoder().encodeToString(list.get(i).getImage())%>" width="370px" height="250px" /></div></a>
<h4 style="text-align:center;position: relative; right:120px;"><a href="demo.jsp" id="name"><%=list.get(i).getMname() %></a></h4>

</div><%} %>

</div>
</div>


<div class="container-fluid">
<div class="rows">
<div class="col-sm-2"></div>
<%for(int i=11;i<list.size();i++){ %>
<div class="col-sm-10">
<h2 style="text-align:center;margin-right:180px;">HARVESTER</h2>
<a href="MachineDetails?id=<%=list.get(i).getMid()%>"><div class="img" style="position: relative; left:110px;"><img src="data:image/png;base64,<%=Base64.getEncoder().encodeToString(list.get(i).getImage())%>" width="650px" height="414px" /></div></a>
<h4 style="text-align:center;position: relative; right:120px;"><a href="demo.jsp" id="name"><%=list.get(i).getMname() %></a></h4>

</div><%} %>
           
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
