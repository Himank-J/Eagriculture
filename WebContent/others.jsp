<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="modal.GlobalMap"%>
<%@page import="com.pojo.Producttype"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<title>Others Related</title>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
<%@include file="css/style.css" %>
</style>

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

<li class="dropdown link-1 active">
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
<div class="col-sm-4 img-responsive sugarcaneimg1">
<img src="images/others2.jpg" class="sugarcaneimg2" /><br /><br />
<img src="images/others3.jpg" class="sugarcaneimg3" />
</div>

<div class="col-sm-8">
<h3 class="sugarheading1"><strong>How hydroponic farmers of India are building businesses</strong> <span class="glyphicon glyphicon-grain"></span></h3>
<p class="sugarpara12">In the middle of an industrial building in the Andheri East neighbourhood of Mumbai is a farm. It is spread across 1000 sq ft and grows 2500 plants. It is no ordinary farm. The hum of an air conditioner greets visitors into the room, tube lights replace sunlight, and theres no soil on the patch.
Herbivore Farms is an example of a newly popular and successful type of urban farming- hydroponics. Simply put, it is growing plants in water. Soil is replaced by a water solution that is rich in macronutrients like nitrogen, potassium, phosphorous, calcium nitrate and micronutrients like manganese, zinc etc. A grow system controls the balance of nutrition, humidity and temperature, uses less water than soil based farming and increases yield without chemicals or pesticides.
There are many advantages to urban farming. The land requirement is quite low, water consumption is 80 percent less, the water is recycled and saved, it is pesticide free and in cases of high tech farms there is no real dependency on the weather, says hydroponic farmer Ajay Naik of Letcetra Agritech in the Sattari district of Goa.
</p>
<p class="sugarpara12">Hydroponic farming is setting up roots all across India. Sakina Rajkotwala and Joshua Lewis, of Herbivore Farms, have come into focus in the last year. In Manori, Linesh Pillai started Terra Farms as a pilot project before taking the idea countrywide. Delhi has Triton Foodworks, Noida has Natures Miracle, Chennai has Sriram Gopals Future Farms and Rahul Dhokas Aqua Farms, and Gurugram based company, Barton Breeze, has six farms across Haryana, Rajasthan, Uttar Pradesh, and Uttarakhand. Hydroponics and other soil less farming techniques can help us take our agriculture and farming industry to the next level, adds Naik.

</p>
<p class="sugarpara12">Rajkotwala and Lewis journey began after they quit their jobs at Magic Bus and Directi, respectively, and decided to seek out their purpose in life. The question of who we are? led them to examine what they eat and how to grow it, and a stint at an Auroville farm, and eating fresh produce, turned out to be the change they sought. It was a revelatory experience, as it opened our minds to the importance of food, says Lewis. We wanted to replicate that farm model pluck vegetables and eat them fresh in the urban space. Hydroponics made the most sense, and they started with a small farm on Rajkotwalas terrace in Juhu in 2017 and moved to Andheri in 2018.
</p>

</div>
</div>

<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-8">
<h3 class="sugarheading2"><strong>Related Real Life Stories</strong></h3>
<p class="sugarpara3"><a href="https://www.greenbiz.com/article/vertical-farming-industry-growing-deeper-roots" target="_blank">The vertical farming industry is growing deeper roots</a> </p>
<p class="sugarpara3"><a href="https://www.thebetterindia.com/199411/how-to-vertical-farming-hydroponics-fresh-produce-organic-india/" target="_blank">Soil-less & Vertical, This Style of Farming Will Reduce Water Usage By 95%!</a> </p>
<p class="sugarpara3"><a href="https://www.thehindubusinessline.com/economy/agri-business/growing-crops-vertically-to-feed-the-growing-population/article33029889.ece" target="_blank">Growing crops vertically to feed the growing population</a> </p>
<p class="sugarpara3"><a href="https://krishijagran.com/success-story/read-how-these-indian-hydroponic-farmers-are-doing-profitable-businesses/" target="_blank">Read How These Indian Hydroponic Farmers are doing Profitable Businesses</a> </p>
<p class="sugarpara3"><a href="https://medium.com/@anishad_45562/vertical-farming-in-india-misguided-dream-or-a-much-needed-reality-d993a2a0dc29"_target="blank">Vertical farming in India: Misguided dream or a much-needed reality?</a> </p>
<p class="sugarpara3"><a href="https://www.thebetterindia.com/193342/delhi-engineer-organic-farming-earns-lakhs-inspiring-india/" target="_blank">Delhi Engineer Turns Urban Kisan, Earns Rs 40K/Day From Organic Farming!</a> </p>
<p class="sugarpara3"><a href="https://www.thebetterindia.com/175338/urban-farming-hyderabad-company-introduces-indoor-farming/" target="_blank">No Time, Space to Farm At Home? Hyderabad Hydroponics Firm Has a Doorstep Solution!</a> </p>
</div>     
</div>
</div>

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

