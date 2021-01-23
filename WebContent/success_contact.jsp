<html>
<%@page import="java.util.*"%>
<%@page import="com.pojo.*"%>
<%@page import="modal.*"%>
<head>
<title>Success Contact</title>

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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></head>

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
<li class="active"><a class="link-1" href="contact.jsp"> CONTACT</a></li>
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
</nav><br><br>

<h3 style="color:red;text-align:center;">Thanks for your feedback!! We will contact you shortly</h3>


<script>
$(document).ready(function(){
    $("input").focus(function(){
        $(this).css("background-color", "lightgrey");
    });
    $("input").blur(function(){
        $(this).css("background-color", "white");
    });
});
</script>

<script>
$(document).ready(function(){
    $("textarea").focus(function(){
        $(this).css("background-color", "lightgrey");
    });
    $("textarea").blur(function(){
        $(this).css("background-color", "white");
    });
});
</script>
<br>
<div id="contact" class="container-fluid"  class="contact1">
<h1 class="text-center">Contact Us</h1><br />

<div class="row" >

<div class="col-md-2">  
</div>

<div class="col-md-8">
<div class="row">
<form method="post" action="Contacts">
<div class="col-sm-6 form-group">
<input class="form-control" id="cname" name="cname" placeholder="Name" type="text" required>
</div>
<div class="col-sm-6 form-group">
<input class="form-control" id="cemail" name="cemail" placeholder="Email" type="email" required>
</div><br>
</div>

<textarea class="form-control" id="comment" name="comment" placeholder="Comment" rows="5"></textarea><br>

<div class="row">
<div class="col-md-12 form-group">
<button class="btn btn-lg btn-danger contact_btn" type="submit">Send</button>
</form>
</div>
</div>
</div>	
<div class="col-md-2"></div>
</div></div>
<br /><br />
<div class="row">
<div class="col-sm-3 contact_div1">
<b class="contact_title1">CALL US ON</b><br><br>
<p class="contact_content31"><span class="glyphicon glyphicon-phone"></span> 
Phone:+91 9711111111<br />
<span class="glyphicon glyphicon-phone-alt"></span>   
Phone:020-6532891 
</p>
</div>
<div class="col-sm-3 contact_div2">
<b class="contact_title2">ADDRESS</b><br><br>
<p class="contact_content32"><span class="glyphicon glyphicon-map-marker"></span> 
1st Floor,Nangude Apartment,
<br>Jagtap Dairy Circle,Pimple Saudagar <br>Pune-27, Maharashtra-India
</p>
</div>
<div class="col-sm-3 contact_div3">
<b class="contact_title3">EMAIL</b><br><br>
<p class="contact_content33"><span class="glyphicon glyphicon-envelope"></span> 
Email: dk.8121@rediffmail.com<br>
<span class="glyphicon glyphicon-envelope"></span> 
Email: info@eagri.com
</p>
</div>
</div>

<br>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3781.5902974217383!2d73.78207591414076!3d18.59250078736715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2b922baaaaac3%3A0xa3de8a2053df6a62!2sAayansh+Germinate+Pvt.+Ltd.!5e0!3m2!1sen!2sin!4v1519716202592" width="1350" height="450" frameborder="0" style="position:relative;top:-20px;" allowfullscreen></iframe>



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