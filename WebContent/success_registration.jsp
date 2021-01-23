<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.util.*"%>
<%@page import="com.pojo.*"%>
<%@page import="modal.*"%>
<head>
<title>Registration Success</title>

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
	var name=document.getElementById("register_name").value;
	if(name=="" || name==null)
	{
		document.getElementById("msg0").innerHTML="Please Enter the Name";
		return false;
	}
	else
	{
		document.getElementById("msg0").innerHTML="";
	}
	var email=document.getElementById("register_email").value;
	var atpos,dotpos;
	atpos=email.indexOf('@');
	dospos=email.lastIndexOf('.');
	if(atpos<1 || atpos+2>dotpos || dotpos+2>email.length)
	{
		document.getElementById("msg1").innerHTML="Please Enter valid email";
		return false;
	}
	else
	{
		document.getElementById("msg1").innerHTML="";
	}
	
	var password=document.getElementById("register_password").value;
	if(password=="" || password==null)
	{
		document.getElementById("msg2").innerHTML="Please Enter the Password";
		return false;
	}
	else
	{
		document.getElementById("msg2").innerHTML="";
	}
	var phone=document.getElementById("register_phone").value;
	if(phone=="" || phone==null || phone.length!=10 || isNaN(phone))
	{
		document.getElementById("msg3").innerHTML="Please Enter the 10 Digit        Phone Number";
		return false;
	}
	else
	{
		document.getElementById("msg3").innerHTML="";
	}
	var address=document.getElementById("register_address").value;
	if(address=="" || address==null)
	{
		document.getElementById("msg4").innerHTML="Please Enter proper Address";
		return false;
	}
	else
	{
		document.getElementById("msg4").innerHTML="";
	}
	var state=document.getElementById("register_state").value;
	if(state=="" || state==null)
	{
		document.getElementById("msg5").innerHTML="Please Enter State";
		return false;
	}
	else
	{
		document.getElementById("msg5").innerHTML="";
	}
	var city=document.getElementById("register_city").value;
	if(city=="" || city==null)
	{
		document.getElementById("msg6").innerHTML="Please Enter City";
		return false;
	}
	else
	{
		document.getElementById("msg6").innerHTML="";
	}
	var pincode=document.getElementById("register_pincode").value;
	if(pincode=="" || pincode==null || pincode.length!=6 || isNaN(pincode))
	{
		document.getElementById("msg7").innerHTML="Please Enter the 6 Digit Pincode";
		return false;
	}
	else
	{
		document.getElementById("msg7").innerHTML="";
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
<li class="active"><a class="link-1" href="registration.jsp"><span class="glyphicon glyphicon-user"></span> BE A MEMBER</a></li>
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
</nav><br><br><br><br />

<h3 style="text-align:center;color:red;">YOU HAVE REGISTERED SUCCESSFULLY</h3>
<center style="font-size:24px;text-decoration:underline"><a href="login.jsp">Login Here</center></a>  
<br />
<div class="container-fluid">
<div class="row">
<div class="col-sm-3">              
</div>
<div class="col-sm-6">
<div class="reg">

<div class="modal-content">
<div class="modal-header modal-header1">
           
<h4>
<span class="glyphicon glyphicon-user"></span> Register Here</h4>
</div>

<div class="modal-body">
<form onsubmit="return valid()" action="First" method="post">
              
<div class="form-group">
<label for="register_name" style="color:black;">NAME</label>
<b class="req_field" id="msg0">*</b>
<input type="text" class="form-control" placeholder="Enter Name" id="register_name" name="name"/>
</div>

<div class="form-group">
<label for="register_email" style="color:black;">EMAIL ADDRESS
</label>
<b class="req_field" id="msg1">*</b>
<input type="email" class="form-control" placeholder="Enter Email" 
id="register_email" name="email"/>
</div>

<div class="form-group">
<label for="register_password" style="color:black;">PASSWORD</label>
<b class="req_field" id="msg2">*</b>
<input type="password" class="form-control" placeholder="Enter Password" id="register_password" name="password"/>
</div>

<div class="form-group">
<label for="register_phone" style="color:black;">PHONE</label>
<b class="req_field" id="msg3">*</b>
<input type="text" class="form-control" placeholder="Enter Phone-Number" id="register_phone" name="phone"/>
</div>

<div class="form-group">
<label for="register_gendermale" class="reg-gender">GENDER:<br/>
<input type="radio" name="gender" id="register_gendermale" value="male" /> MALE</label>
 
<label for="register_genderfemale" style="color:black;">
<input type="radio" name="gender" id="register_genderfemale" value="female" /> FEMALE</label>
</div>

<div class="form-group">
<label for="register_address" style="color:black;">FARMER ADDRESS
</label>
<b class="req_field" id="msg4">*</b>
<textarea class="form-control" placeholder="Enter Address" 
id="register_address" name="address" rows="2"></textarea>
</div>

<div class="form-group">
<label for="register_state" style="color:black;">STATE</label>
<b class="req_field" id="msg5">*</b>
<input type="text" class="form-control" placeholder="Enter State" id="register_state" name="state"/>
</div>

<div class="form-group">
<label for="register_city" style="color:black;">CITY</label>
<b class="req_field" id="msg6">*</b>
<input type="text" class="form-control" placeholder="Enter City" id="register_city" name="city"/>
</div>

<div class="form-group">
<label for="register_pincode" style="color:black;">Pincode</label>
<b class="req_field" id="msg7">*</b>
<input type="text" class="form-control" placeholder="Enter Pincode" id="register_pincode" name="pincode"/>
</div>

<button type="submit" class="btn btn-danger reg_btn">SUBMIT</button>
                
</form>
</div>
</div>
</div>
</div>
<div class="col-sm-3"></div>
</div>
</div><br />

<!-- *** COPYRIGHT ***-->
<div id="copyright">
<div class="container-fluid copyright2">
<div class="col-md-12">
<h4 class="pull-left copyright copyright1">Copyright © VertiFarmPortalIndia</h4>
</div>
</div>
</div>
<!-- *** COPYRIGHT END *** -->
  
</body>
</html>
