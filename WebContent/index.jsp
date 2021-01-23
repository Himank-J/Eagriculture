<!DOCTYPE html>
<%@page import="modal.GlobalMap"%>
<%@page import="com.pojo.Producttype"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<title>VertiFarm</title>
<head>

<link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
<style type="text/css">
  <%@include file="css/style.css" %>
</style>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
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
<li class="active"><a class="link-1" href="index.jsp">HOME</a></li>

<li class="dropdown link-1">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">OUR ARTICLES<span class="caret"></span></a>
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

<!-- SLIDER -->

<div id="myCarousel" class="carousel slide" data-ride="carousel">
<!-- Indicators -->
<ol class="carousel-indicators">
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1"></li>
<li data-target="#myCarousel" data-slide-to="2"></li>
<li data-target="#myCarousel" data-slide-to="3"></li>
<li data-target="#myCarousel" data-slide-to="4"></li>
</ol>
<!-- Wrapper for slides -->
<div class="carousel-inner">
<div class="item active">
<img src="images/c2.jpg" alt="Agriulture training" style="width:100%;height:565px;">
<div class="carousel-caption">
<h3 class="slider_images_text">AGRICULTURE TRAINING</h3>
<p class="slider_images_text">WE AIM AT PROVIDING PROPER AGRICULTURAL TRAINING</p>
</div>
</div>

<div class="item">
<img src="images/car2.jpg" alt="Agriulture insurance" style="width:100%;height:565px;">
<div class="carousel-caption">
<h3 class="slider_images_text">AGRICULTURE INSURANCE</h3>
<p class="slider_images_text">WE ALSO PROVIDE INSURANCE FACILITY</p>
</div>
</div>

<div class="item">
<img src="images/car1.jpg" alt="Crops" style="width:100%;height:565px;">
<div class="carousel-caption">
<h3 class="slider_images_text">MATERIALS</h3>
<p class="slider_images_text">WE ALSO PROVIDE V-FARM MATERIALS FACILITY</p>
</div>
</div>
    
<div class="item">
<img src="images/c3.jpg" alt="Soil testing" style="width:100%;height:565px;">
<div class="carousel-caption">
<h3 class="slider_images_text">MACHINE RENTING</h3>
<p class="slider_images_text">TRY THE PRODUCT BEFORE FULL INVESTMENT</p>
</div>
</div>

<div class="item">
<img src="images/c4.jpg" alt="Machinery" style="width:100%;height:565px;">
<div class="carousel-caption">
<h3 class="slider_images_text">MACHINERY</h3>
<p class="slider_images_text">GROWING THE FUTURE</p>
</div>
</div>


  
</div>
<!-- Left and right controls -->
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span>
</a>
</div>
<!-- SLIDER END -->

<!--Welcome Name -->
<div class="container-fluid">
<div class="row"  >.
<div class="col-sm-12">
<h1 class="welcome"><strong> Welcome To The Digital Vertical Farming Portal Of India</strong></h1><br>

<p class="welcome_text">Agriculture is the backbone of the Indian Economy"- said Mahatma Gandhi six decades ago. Even today, the situation is still the same, with almost the entire economy being sustained by agriculture, which is the mainstay of the villages. It contributes 16% of the overall GDP and accounts for employment of approximately 52% of the Indian population.
</p>
<p class="welcome_text">
Vertical farming or V-Farming is the future of agriculture in India.With advancement in technology, India has everything it needs to bring out the full potential of V-Farming.  
</p>
<p class="welcome_text">
With rise of young technology enthusiasts, Vertical farming is the right field to attract all those young and sharp minds who are ready to take control of the future of Indian agriculture.
</p>
<br />

<!-- Below Three Images -->
<div class="container">
<div class="row" >
<div class="col-sm-4" style="text-align:center;">

<a href="#demo" data-toggle="collapse"><img src="images/machine01.png" class="three_images"class="img-thumbnail" alt="farm machinery"></a><br/>

<div><h2 class="three_image_title">Machinery</h2></div>
<div id="demo" class="collapse">
<p class="three_text"></p>
<p class="three_text">Easy to use</p>
<p class="three_text">low level maintainance</p>
<p class="btn1"><button class="btn-danger">
<%for(int i=6;i<7;i++){ %>
<a style="color:white;" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>">
<%} %>See More</a></button>&nbsp;&nbsp;

<button class="btn-danger" data-toggle="modal" data-target="#myModal">
<%for(int i=6;i<7;i++){ %>
<a style="color:white;" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>">
<%} %>Buy Now</a></button>

</p>
</div>
</div>

<div class="col-sm-4"style="text-align:center;">
<a href="#Div1" data-toggle="collapse"><img src="images/material.jpg" class="three_images" class="img-thumbnail" alt="Fertilizers & Pesticides">
</a><br/>

<div><h2 class="three_image_title">Materials
</h2></div>
<div id="Div1" class="collapse">
<p class="three_text">For the best result</p>
<p class="three_text">use our materials </p>
<p class="three_text">available in lower price</p>

<p class="btn1"><button class="btn-danger">
<%for(int i=0;i<1;i++){ %>
<a style="color:white;" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>">
<%} %>See More</a></button>&nbsp;&nbsp;

<button class="btn-danger" data-toggle="modal" data-target="#myModal">
<%for(int i=0;i<1;i++){ %>
<a style="color:white;" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>">
<%} %>Buy Now</a></button>

</p>

</div>
</div>

<div class="col-sm-4"style="text-align:center;">
<a href="#Div2" data-toggle="collapse"><img src="images/rent.jpg" class="three_images" class="img-thumbnail" alt="Soil Testing"></a><br/>
<div><h2 class="three_image_title">Rent machines</h2></div>
<div id="Div2" class="collapse">
<p class="three_text">For renting machines(if available)</p>
<p class="three_text">call us on our number</p>
<p class="three_text">1800 200 7575</p>
<p class="btn1"><button class="btn-danger"><a href="soiltest.jsp" style="color:white;">See More</a></button>&nbsp;&nbsp;<button class="btn-danger" data-toggle="modal" data-target="#myModal"><a href="soiltest.jsp" style="color:white;">Rent</a></button></p>
</div>
</div>

</div>
</div>
<!-- Below Three Images End -->

<!-- Mission & Vision -->
<div class="container-fluid " id="container-fluid" style="margin-top:15px;">
<div class="row">

<div class="col-sm-4 mission"></div>

<div class="col-sm-8">
<h3 class="mission_title"><strong>Mission</strong> </h3>
<p class="mission_content">At Vertifarm, we are on a mission to promote the idea of vertical farming in communities across the globe. 
We aim to spread awareness about the importance of vertical farming and encourage people to take up the practice to use less space and 
fewer resources to grow fresh, healthy and clean produce. Vertifarm has ideas and products that will help improve the lives of plant, people 
and OUR PLANET.
</p>
<h3 class="mission_title"><strong>Vision</strong> </h3>
<p class="mission_content">By 2050, the world population is expected to grow another 2 billion, and India being the fastest growing 
population will soon face the challenge of feeding its people. To feed a billion mouths, land needs to be cultivated at an exponential 
rate which will in future lead to a total loss of arable lands. Increasing food demand and decreasing arable lands together, 
contribute to one of the biggest challenges faced by the human race. So, what is the answer to this challenge? There has to be a 
solution! What if we grow crops vertically? Wouldnt it save a lot of land while increasing produce? 
Farming vertically seems to be the need of the hour and the key to the future. It is the hero we both need and deserve!
</p>
</div>
</div>
</div>
<!-- Mission & Vision -->

<!--*** FOOTER ***-->
<footer id="footer">
<div class="container-fluid footer1">
<div class="col-md-3 col-sm-6">
<h3 class="footer_title">SERVICES</h3>
<h4>
<a class="footer" href="index.jsp">Home</a><br>
<a class="footer" href="#">Our Articles</a><br>
<a class="footer" href="#">Materials</a><br>
<a class="footer" href="#">Machines</a><br>
<a class="footer" href="demo1.jsp">Demo</a><br>
<a class="footer" href="soiltest.jsp">Renting</a></h4>

<hr class="hidden-md hidden-lg hidden-sm">
</div>

<!-- /.col-md-3 -->

<div class="col-md-3 col-sm-6">

<h3 class="footer_title">OUR ARTICLE</h3>
<h4>    
<a class="footer" href="vfarm.jsp">Why V-Farm</a><br>
<a class="footer" href="hydroponics.jsp">Hydroponics</a><br>
<a class="footer" href="aeroponics.jsp">Aeroponics</a><br>
<a class="footer" href="aquaponics.jsp">Aquaponics</a><br>
<a class="footer" href="others.jsp">Other Related</a><br>
<a class="footer" href="videos.jsp">V-Farm Videos</a>                 
</h4>
<hr class="hidden-md hidden-lg">
</div>
<!-- /.col-md-3 -->

<div class="col-md-3 col-sm-6">
<h3 class="footer_title">MATERIALS</h3>
<h4>    
<!--   <a class="footer" href="chemicals.jsp">Chemicals</a><br>
<a class="footer" href="ledandlamps.jsp">Led Grow Lights and Lamps</a><br>
<a class="footer" href="greenhouseplantsupport.jsp">Greenhouse Plant Support</a><br>
<a class="footer" href="coir.jsp">Coir</a><br>      -->
<ul>
<%for(int i=0;i<1;i++){ %>
<li><a class="footer" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>"><%=list.get(i).getProducttype() %></a></li>
<%} %>
<!--<li><a href="ledandlamps.jsp" class="dropdown1">LED GROW LIGHTS AND LAMPS</a></li> -->
<%for(int i=1;i<2;i++){ %>
<li><a class="footer" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>"><%=list.get(i).getProducttype() %></a></li>
<%} %>
<!--<li><a href="greenhouseplantsupport.jsp" class="dropdown1">GREENHOUSE PLANT SUPPORT</a></li> -->
<%for(int i=2;i<3;i++){ %>
<li><a class="footer" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>"><%=list.get(i).getProducttype() %></a></li>
<%} %>
<!--  <li><a href="coir.jsp" class="dropdown1">COIR</a></li> -->
<%for(int i=3;i<4;i++){ %>
<li><a class="footer" href="DisplayProduct.jsp?id=<%=list.get(i).getTid() %>"><%=list.get(i).getProducttype() %></a></li>
<%} %>
</ul>
</h4>
</div>
<!-- /.col-md-3 -->

<div class="col-md-3 col-sm-6">
<h3 class="footer_title">CONTACT</h3>
<h4 class="contact_info">Flat no .502 ,Sopan Complex
<br>Ingale colony 
<br>Shivane<br>Pune-23, Maharashtra-India<br><br>
<a href="contact.jsp" class="btn btn-default btn-danger contactbtnh">Go to Contact Page</a>
</h4>  
<hr class="hidden-md hidden-lg hidden-sm">

<div class="photostream" width="200">
</div>
</div>
</div>
</footer>
<!-- *** FOOTER END *** -->

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