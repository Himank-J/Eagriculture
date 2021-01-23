<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Fertilizer</title>
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
<a class="dropdown-toggle" data-toggle="dropdown" href="#">MATERIAL<span class="caret">
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
<li class="active"><a class="link-1" href="fertilizer.jsp"> FERTILIZERS AND PESTICIDES</a></li>
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
<img src="images/Khaitan-SSP.jpg" class="fertilizer_image1"/>
</div>
<div class="col-sm-9"><br />
<h3><strong class="ab1">KHAITAN SINGLE SUPER PHOSPHATE (SSP)</strong></h3>
<p style="font-size:19px;" class="ab1">Single Super Phosphate (SSP) is basal dose straight Phosphatic fertilizer, having 16% P2O5 (NACS) and 11% sulphur contents. Its main application is in the agricultural sector. Since, India is an agriculture based economy, the principal use of SSP is evident and it is a highly demanded fertilizer mostly used at the time of preparation of the land. Its water-soluble phosphate content is easily consumed by plants and for better yield, its effectiveness remains unquestioned.</p>
<p style="font-size:19px;" class="ab1">It is cheapest source of Phosphatic contents for plant and hence it is very popular among farming community. SSP is sulphur containing fertilizer which is extremely essential for oil seed & pulses. Government of India is putting hard efforts to increase oilseed/pulses production to avoid imports of these two commodities which may continue for another 20-30 years.  Hence significance of SSP is become more specific as "S" (Sulphur) comes almost free of cost through this fertilizer.
</p>
<p style="font-size:19px;" class="ab1">
The fertilizer is available in popular brand names:-Khaitan Single super Phosphate. These brands are very popular among farming communities in the states of MP, CG, UP, Rajasthan, Maharashtra, Haryana, Punjab etc.
</p>            
</div>
</div></div>
       
<div class="row">
<div class="col-sm-12"> 
<a href="#"class="btn btn-danger fbtn1">BUY NOW</a>
</div>
</div>

<div class="container-fluid">
<div class="row" style="margin-top:8px;">
<div class="col-sm-3">

<img src="images/kisanurea.jpg" class="fertilizer_image2"/>
</div>
<div class="col-sm-9"><br /><br />
<h3><strong class="ab1">KISAN UREA</strong></h3>
<p class="ab1 fertilizer_font">Kisan Urea is a highly concentrated, solid, nitrogenous fertilizer, containing 46.0% Nitrogen. It is completely soluble in water hence Nitrogen is easily available to crops. It contains Nitrogen in a milder form which changes to ammonical forms and is retrieved by soil colloids for longer duration. Urea is available in granular form and can be applied by drill and broadcasting. Kisan Urea is ideally suitable for all types of crops and for foliar spray which instantly removes nitrogen deficiency.Kisan Urea also has a strong and long lasting effect on crop resulting in bumper crops Carbonic acid present in Kisan Urea helps in absorption of other nutrients like phosphate and Potash by roots of crop.</p>                 
</div>
</div></div>
        
<div class="row">
<div class="col-sm-12"><br />
<a href="#" class="btn btn-danger fbtn1">BUY NOW</a>
</div>
</div>

<div class="container-fluid" style="margin-top:8px;">
<div class="row">
<div class="col-sm-3">
<img src="images/Neem Casted Urea.jpg" class="fertilizer_image3" />
</div>
<div class="col-sm-9">
<h3><strong class="ab1 f3">NEEM COASTED UREA</strong></h3>
<p class="ab1 fcontent3 fertilizer_font">Agronomical trial on Paddy and Wheat crops with Neem coated Urea as source of Nitrogen has produced significantly higher yield at research and farm level. Looking into the potential of Neem Coated Urea and its acceptance by the farmers, Ministry of Agriculture in July 2004, included the Neem Coated Urea in FCO. The use of Neem Coated Urea has been found to improve the uptake of N, P and K significantly. Since 2008 the, Ministry of Chemicals and Fertilizers allowed Neem Coated Urea manufacturer to sell NCU at 5% above the MRP, to recover the cost of coating, however cost of Neem kernel Oil and production as such of Neem Coated Urea has increased significantly.</p>
<p class="ab1 fcontent3 fertilizer_font">As per recent notification dated 25.05.2015 all the urea producers in country shall now be producing 100% urea as NCC in order to improve crop productivity and reduce the subsidy. Balanced use Nitrogen, Phosphorous, Potassium along with the requirements of secondary and micronutrient increase the yield at economic level. Of the three major Nutrients Nitrogen, Phosphorous and Potash, nitrogen has received the maximum attention because of many reasons. Nitrogen gets easily converted to available forms from various types of fertilizers that are being applied for crop nutrition.</p>
                   
</div>
</div></div>
       
<div class="row">
<div class="col-sm-12">
<a href="#"class="btn btn-danger fbtn1 f3">BUY NOW</a>
</div>
</div>

<div class="container-fluid" style="margin-top:4px;">
<div class="row">
<div class="col-sm-3">
<img src="images/bio liquid fertilizers.jpg" class="fertilizer_image4" />
</div>
<div class="col-sm-9">
<h3><strong class="ab1" class="f4">KISAN BIO-FERTILIZER</strong></h3>
<p class="ab1 fertilizer_font">NFL manufactures and markets three types of Bio-Fertilizers, Rhizobium, Phosphate Solubilising Bacteria (PSB) and Azetobactor. Starting with a mere 23 MT production in 1995-96, the production has risen to 231 MT (Approx) in 2010-11. The Company presently markets its bio-fertilizers in Madhya Pradesh, Maharashtra, Uttar Pradesh, Uttrakhand, Chattisgarh, Bihar, Jharkhand, Himachal Pradesh, Jammu & Kashmir, Punjab, Haryana & Rajasthan. </p>
<p class="ab1 fertilizer_font">Bio-fertilizers are used to supplement chemical fertilizers as also to maintain soil fertility; besides the following:- Bio-Fertilizers are supplement to Chemical Fertilizers. Bio-Fertilizers are cheap and can reduce the cost of cultivation. Fix Biological Nitrogen in the soil, which is readily available to the plant. Increase crop yield by 4-5% on an average. Improve soil properties and sustain soil fertility. Provides plant nutrient at low cost and useful for the consecutive crops.</p>
</div>
</div></div>
        
<div class="row">
<div class="col-sm-12"><br />
<a href="#"class="btn btn-danger fbtn4">BUY NOW</a>
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
