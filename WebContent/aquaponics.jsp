<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="modal.GlobalMap"%>
<%@page import="com.pojo.Producttype"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<title>Aquaponics</title>
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
<div class="col-sm-4 img-responsive riceimage1" ><br /><br />
<img src="images/aqua2.jpg" class="riceimage2" /><br /><br />
<img src="images/aqua3.jpg" class="riceimage3" />
</div>

<div class="col-sm-8">
<h3 class="riceheading1"><strong>What Is Aquaponics?</strong> <span class="glyphicon glyphicon-grain"></span></h3>
<p class="ricepara12">Aquaponics is a sustainable method of raising both fish and vegetables. It is popular with individuals, entrepreneurs, educators, missions and governments.  Furthermore, with this type of indoor farming, you grow substantially more food with less water, land and labor than traditional agriculture.
What is aquaponics? a resilient farming system that provides wellness and better nutrition.
Aquaponics is a form of agriculture that combines raising fish in tanks (recirculating aquaculture) with soilless plant culture (hydroponics).  In aquaponics, the nutrient-rich water from raising fish provides a natural fertilizer for the plants and the plants help to purify the water for the fish.  Aquaponics can be used to sustainably raise fresh fish and vegetables for a family, to feed a village or to generate profit in a commercial farming venture, year round, in any climate.
Aquaponics is a great example of year round, indoor farming. It can be done anywhere, providing fresh local food that is free of pesticides, herbicides and chemical fertilizers. It is safe, easy and fresh!
</p>
<h3 class="riceheading2"><strong>What Can You Grow?</strong></h3>
<p class="ricepara3">The fish and plants that you select for your aquaponic system should have similar needs as far as temperature and pH. As a general rule, warm, fresh water fish and leafy crops, such as lettuce, greens and herbs will do the best.
Most commercial growers raise leafy crops, but you can grow all kinds of plants in aquaponics. We can even grow tropical fruit trees in our aquaponic systems! Yes, we grow bananas, limes, oranges, lemons and pomegranates year round in aquaponics!
</p>
</div>
</div>

<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-8">
<h3 class="riceheading2"><strong>How Aquaponics Works</strong></h3>
<p class="ricepara3">The main input to an aquaponic system is fish food. The fish eat the food and excrete waste. More than 50 percent of the waste produced by fish is in the form of ammonia secreted in the urine and, in small quantities, through the gills. The remainder of the waste, excreted as fecal matter, undergoes a process called mineralization which occurs when heterotrophic bacteria consume fish waste, decaying plant matter and uneaten food, converting all three to ammonia and other compounds. In sufficient quantities ammonia is toxic to plants and fish.
</p>
<p class="ricepara3">Nitrifying bacteria, which naturally live in the soil, water and air, convert ammonia first to nitrite and then to nitrate which plants consume. In an aquaponic system the heterotrophic and nitrifying bacteria will attach to the tank walls, underside of the rafts, organic matter, the growing medium (if used) and in the water column. The beneficial bacteria discussed here are natural and will inhabit an aquaponic system as soon as ammonia and nitrite are present.
Essentially, you have three crops to keep alive in aquaponics; the fish, the plants and the beneficial bacteria. These three living entities each rely on the other to live. The bacteria consume the fish waste keeping the water clean for the fish. In the process, the bacteria provide the plants with a usable form of nutrients. In removing these nutrients through plant growth, the plants help to clean the water the fish live in.
Aquaponics is a very efficient method of growing food that uses a minimum of water and space and utilizes waste, resulting in an end product of organic, healthful fish and vegetables. From a nutritional standpoint, aquaponics provides food in the form of both protein (from the fish) and vegetables.
</p>
</div>     
</div></div>

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

