<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import="java.time.LocalDateTime, java.time.format.DateTimeFormatter"%>
<%@ page import="java.util.*"%>
<%@ page import="modal.*"%>
<%@ page import="com.pojo.*"%>
<head>
<title>Order Information</title>
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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
</nav><br><br><br /><br />

<%
double grand=(double)session.getAttribute("grandtotal");
System.out.println("orderinfo total="+grand); 
%>
<div class="container-fluid">
<div class="row">
<div class="col-sm-3">              
</div>
<div class="col-sm-6">
<div class="soiltest1">

<div class="modal-content">
<div class="modal-header modal-header1" >         
<h4>Order Information Form</h4>
</div>

<div class="modal-body">
<form onsubmit="return valid()" action="PurchaseP" method="post">

<div class="form-group">
<label for="farmer_date" style="color:black;">ORDER DATE</label>
<%
 Date date=new Date();
 LocalDateTime now=LocalDateTime.now();
%>
<input type="text" class="form-control" id="farmer_date" name="purdate" readonly="readonly" value="<%= DateTimeFormatter.ofPattern("yyyy/MM/dd").format(now)%>"/>
</div>
              
<div class="form-group">
<label for="farmer_phone" style="color:black;">PHONE</label>
<b class="req_field" id="msg1">*</b>
<input type="text" class="form-control" placeholder="Enter Phone-Number" id="farmer_phone" name="phone"/>
</div>

<div class="form-group">
<label for="farmer_address" style="color:black;">ADDRESS
</label>
<b class="req_field" id="msg2">*</b>
<textarea class="form-control" placeholder="Enter Address" 
id="farmer_address" name="address" rows="2"></textarea>
</div>

<div class="form-group">
<label for="farmer_payment" style="color:black;">MODE OF PAYMENT</label>
<%
	String x="Credit/Debit Card";
%>
<input type="text" class="form-control" id="farmer_payment" name="modeofpayment" readonly="readonly" value="<%=x%>"/>
</div>

<button type="submit" class="btn btn-danger reg_btn ">SUBMIT</button>
               
</form>
</div>
</div>
</div>
</div>
<div class="col-sm-3"></div>
</div>
</div><br /><br /><br /><br /><br />

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
