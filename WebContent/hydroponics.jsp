<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="modal.GlobalMap"%>
<%@page import="com.pojo.Producttype"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<title>Hydroponics</title>
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
<div class="col-sm-4 img-responsive pulseimage1"><br />
<img src="images/hydro2.JPG" class="pulseimage2" /><br /><br />
<img src="images/hydro3.JPG" class="pulseimage3" />
</div>

<div class="col-sm-8">
<h3 class="pulseheading1"><strong>Hydroponics</strong> <span class="glyphicon glyphicon-grain"></span></h3>
<p class="pulsepara12">In the 19th century, a German botanist at the University of Wurzburg, Julius Sachs, dedicated his career to understanding the essential elements that plants need to survive. By examining differences between plants grown in soil and those grown in water, Sachs found that plants did not need to grow in soil but only needed the nutrients that are derived from microorganisms that live in the soil. In 1860, Sachs published the, nutrient solution, formula for growing plants in water, which set the foundation for modern day hydroponic technology.  
</p>
<p class="pulsepara12">Plants obtain 3 nutrients from the air carbon, hydrogen, and oxygen and 13 nutrients from supplemented water- nitrogen, phosphorous, potassium, calcium, magnesium, sulfur, iron, manganese, copper, zinc, boron, chlorine, and molybdate.
Hydroponic systems today are very sophisticated, there are systems that will monitor the level of nutrients pH, and temperature of the water, and even the amount of light the plants are receiving. There are three main types of hydroponic systems- a nutrient film technique, an Ebb and Flow System, and a Wick system. A nutrient film hydroponic technique involves plants being grown in a grow tray that it slightly angled and positioned above a reservoir filled with the water-nutrient mix. This allows a thin stream of water to flow across plant roots, allowing the plants to have sufficient water, nutrients and aeration, and then drained back into the reservoir. The nutrient film technique is the most common hydroponic system used today. Plenty and Bowery, two of the largest hydroponic farms in the US, use nutrient film techniques to grow lettuce, spinach and other leafy greens. The Ebb and Flow technique allows plants to be flooded with the nutrient-rich water, and after the plant roots uptake nutrients, water is actively drained back into a reservoir to be reused. Finally, a hydroponic wick system is the simplest of all, as nutrients are passively given to the plant from a wick or piece of string running up to the plant from the water reservoir. In this system, plants are grown in an inert growing medium such as sand, rock, wool or clay balls that help anchor the plant roots. These different systems are interchangeable, but some systems may be better for growing different types of plants.
</p>
</div>
</div>

<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-8">
<h3 class="pulseheading2"><strong>Hydroponics for a sustainable future</strong></h3>
<p class="pulsepara3">Given the need for more sustainable agriculture, there has been a rise in eco-friendly start-up companies around the world that are using hydroponic technology to produce crops on a large scale with a technique known as Vertical Farming. 
Vertical farms are buildings filled with countless levels of hydroponic systems (or nutrient film style planters), growing different crops in an indoor, controlled temperature environment. The largest vertical farm is being built in Dubai, covering 130,000 square feet of land and aiming to produce 6,000 pounds of food per day, using 1/2500th the amount of water as an equivalent soil operation. For a city that imports 85% of their food, this will greatly revolutionize the way the city eats. 
</p>
<p class="pulsepara3">Vertical Farming is the term for large-scale hydroponic systems that are engineered to house thousands of square feet of growing systems, across many floors in a skyscraper esque building.
While vertical farms hold a lot of promise, they are expensive to implement, technically difficult on a large scale, and the food produced from these systems is generally more expensive than equivalent soil grown food because of the high energy costs of maintaining the systems. Even so, the Associated Press estimates that food produced by hydroponic technology in 2019 is worth $32 billion USD, and this is projected to grow at a rate of 5% per year until 2025.
While hydroponic technology may never replace conventional farming, it is breaking the paradigm of food production, we may see a new generation of modern farmers building green walls inside their houses or community centers to feed families with fresh produce grown all year round. 
</p>

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