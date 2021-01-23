<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Brinjal</title>
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

<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>                        
</button>

<a class="navbar-brand navbar1"><img src="images/logo.png" class="logoimg"/></a>
</div>
<div class="collapse navbar-collapse" id="myNavbar">
<ul class="nav navbar-nav">
<li><a class="link-1" href="index.jsp">HOME</a></li>

<li class="dropdown link-1">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">OUR ARTICLES <span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="vfarm.jsp" class="dropdown1">WHY V-FARM?</a></li>
<li><a href="hydroponics.jsp" class="dropdown1">HYDROPONICS</a></li>
<li><a href="aquaponics.jsp" class="dropdown1">AQUAPONICS</a></li>
<li><a href="aeroponics.jsp" class="dropdown1">AEROPONICS</a></li>
<li><a href="others.jsp" class="dropdown1">OTHER RELATED..</a></li>
<li><a href="jute.jsp" class="dropdown1">JUTE</a></li>
</ul>
</li>

<li class="dropdown link-1 active">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">MATERIALS <span class="caret">
</span></a>
<ul class="dropdown-menu">
<li><a href="chemicals.jsp" class="dropdown1">CHEMICALS</a></li>
<li><a href="ledandlamps.jsp" class="dropdown1">LED GROW LIGHTS AND LAMPS</a></li>
<li><a href="greenhouseplantsupport.jsp" class="dropdown1">GREENHOUSE PLANT SUPPORT</a></li>
<li><a href="coir.jsp" class="dropdown1">COIR</a></li>
<li><a href="brinjal.jsp" class="dropdown1">BRINJAL</a></li>
<li><a href="watermelon.jsp" class="dropdown1">WATERMELON</a></li>
</ul>
</li>

<li><a class="link-1" href="machine.jsp"> MACHINERY</a></li>
<li><a class="link-1" href="fertilizer.jsp"> FERTILIZERS AND PESTICIDES</a></li>
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
</nav><br><br>

<div class="container-fluid">
<div class="row">
<div class="col-sm-3"><br />
<img src="images/ssss.jpg" class="brinjalimg1"/>
</div>
<div class="col-sm-9" style="margin-top:5px;"><br /><br />
<h3><strong class="ab1">MAHY SUPER 10 (MEBH - 10 IMP) BRINJALS</strong></h3>
<p class="ab1 wfont">Purple variegated spiny With prominent spines and eye-catching features including an attractive colour, this hybrid variety has better retention in summer.</p>
<p>
<ul class="ab1 wfont">
<li>KaveriSampada Blackgram: KBG28</li>
<li>KaveriSampada Redgram: KG19</li>
<li>KEPH 474</li>
</ul></p>
           
</div>
</div></div>
       
<div class="row">
<div class="col-sm-12"> <br />
<a href="#"class="btn btn-danger brinjalbtn1">BUY NOW</a>
</div>
</div>

<div class="container-fluid brinjalimg2">
<div class="row">

<div class="col-sm-3"><br />
<img src="images/sds.jpg" class="brinjalimg23"/>
</div>

<div class="col-sm-9"><br /><br /><br /><br />
<h3><strong class="ab1">KAVERI BRINJALS</strong></h3>
<p class="ab1 wfont">Regular Segment Determinate dark red fruits with a square round shape that weigh an average of 75-80 gm makes this a much desired product in the regular segment.</p>     
            
</div>
</div></div>
        
<div class="row">
<div class="col-sm-12"><br />
<a href="#"class="btn btn-danger brinjalbtn2">BUY NOW</a>
</div>
</div>

<div class="container-fluid">
<div class="row">
<div class="col-sm-3">

<img src="images/ti_305_14097309135406c96178a10.jpg" class="brinjalimg23"/>
</div>
<div class="col-sm-9"><br /><br /><br />
<h3><strong class="ab1">MAHY GREEN</strong></h3>
<p class="ab1 wfont">Green Oval With visually appealing features including shape and a shiny green gloss, this is a high yielding variety with heat tolerance.</p>     
            
</div>
</div></div>
        
<div class="row">
<div class="col-sm-12">
<a href="#"class="btn btn-danger brinjalbtn3">BUY NOW</a>
</div>
</div>

<br />

<!-- *** COPYRIGHT ***-->
<div id="copyright">
<div class="container-fluid copyright">
<div class="col-md-12">
<h4 class="pull-left copyright copyright1">Copyright © DigiFarmPortalIndia</h4>
</div>
</div>
</div>
<!-- *** COPYRIGHT END *** --> 

</body>
</html>
