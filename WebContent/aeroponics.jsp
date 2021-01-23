<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="modal.GlobalMap"%>
<%@page import="com.pojo.Producttype"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<title>Aeroponics</title>
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
<div class="col-sm-4 img-responsive maizeimage1"><br />
<img src="images/aero2.jpg" class="maizeimage2" /><br /><br />
<img src="images/aero3.jpg" class="maizeimage3" />
</div>

<div class="col-sm-8">
<h3 class="maizeheading1"><strong>Aeroponics: A Key for Sustainability</strong> <span class="glyphicon glyphicon-grain"></span></h3>
<p class="maizepara12">Aeroponics is certainly a major key to decreasing these statistics, but it takes more than one horticulturist to accomplish this goal. Its time for each of us to take action through aeroponics, whether its in the form of growing a vast farm or just planting a few crops- every seed matters. 
</p>
<p class="maizepara12">Growing plants and produce out of the ground is so last 12,00 years ago, but you know what is environmentally friendly, efficient, and results in high-quality vegetation? The utilization of aeroponics.
Now wait a second, what exactly does this process consist of?
</p>

<p class="maizepara12">To put it simply, aeroponics is growing without Earth.This is attainable (and actually very beneficial) because it consists of a gardening practice where plants are grown and nourished as their root structures are suspended in air and regularly sprayed with a water solution. A key component of how this system is so beneficial to the environment are the types of nutrients being incorporated into the plants routine.
When common elements such as nitrogen, potassium, phosphorus, calcium, and magnesium are missing, the effects can be extremely hazardous to the growth of plants. For instance, a deficiency of potassium in the nutrient solution can result in the leaves turning yellow with scattered dark spots, followed by tissue death or a stunt in the plants growth and all foliage becoming yellow and curled.
After many years of research, aeroponic horticulturists have proven the benefits of using aeroponic farming and provide notable reasoning behind it. One of which was an experiment administered on Asian beans by the National Aeronautics and Space Administration (NASA). Their experiment illustrated how aeroponics reduces the usage of water by 98 percent and plants can grow up to three times faster in zero gravity aeroponic systems. Their research consisted of seedlings being suspended in the air in closed frames while their leafy tips and roots were allowed to grow up and down, respectively. Enclosure of the roots aided in the efficiency of the plants growth because it allowed for the nutrient water mix to be used more since the solution can easily travel to other areas that the plant may not reach in traditional farming methods.
</p>
<p class="maizepara12">Creativity is certainly a notable factor of aeroponic farming, but another principal trend that should be taken into account is the implementation of pumps. They can automatically keep plants nourished without constant supervision as long as the system is sealed. Pumps allow for a substantial amount of nutrient mist to be consistently transported to the roots when necessary so an abundance of water is able to be conserved as well.
</p>
</div>
</div>

<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-8">
<h3 class="maizeheading2"><strong>Is Aeroponics really that important?</strong></h3>
<p class="maizepara3">Ok, wait a second. Maybe I hyped it up a bit too much- is aeroponics really such a big deal? Do we really need to have amazing produce, be efficient, and only utilize our resources when they are very necessary?  YES!
</p>
<p class="maizepara3">A myriad of factors contribute to the urgent need of aeroponics and sustainability, but what is at the very root of the problem? Us. Our total population is expected to reach 8.6 billion in nearly a decade, and rather than focusing on using our land in a resourceful manner, many choose to constantly urbanize towns without integrating projects that conserve and/or increase our resources. Consequently, there are a multitude of perilous results that are close to taking numerous lives. One alarming example is how malnutrition has affected approximately 151 million children suffering from stunted growth and has taken nearly 3 million children alone. Aeroponics is certainly a major key to decreasing these statistics, but it takes more than one horticulturist to accomplish this goal. Its time for each of us to take action through aeroponics, whether its in the form of growing a vast farm or just planting a few crops- every seed matters. 
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