<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="modal.GlobalMap"%>
<%@page import="com.pojo.Producttype"%>
<%@page import="java.util.List"%>
<%@page import="modal.BLManager"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<title>Vfarm</title>
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
</nav><br><br>

<div class="container-fluid" style="margin-top:-18px;">
<div class="row">
<div class="col-sm-4 img-responsive wheatimage1"><br />
<img src="images/vfarm.JPG" class="wheatimage2" /><br /><br />
<img src="images/vfarm2.jpg" class="wheatimage3" />
</div><br />

<div class="col-sm-8">
<h3 class="wheatheading1"><strong>What Is Vertical Farming?</strong> <span class="glyphicon glyphicon-grain"></span></h3>
<p class="wheatpara12">By 2050, the world population is expected to grow by another 2 billion people, and
feeding it will be a huge challenge. Due to industrial development and urbanization,
we are losing arable lands every day. Scientists say that the Earth has lost a third of
its arable lands over the last 40 years.
We dont know how much more we are going to lose in the next 40 years. Increasing
food demand due to a growing population along with ever decreasing arable lands
poses one of the greatest challenges facing us. Many believe that vertical farming
can be the answer to this challenge. Is vertical farming the future of agriculture? Lets
find out!</p>

<p class="wheatpara12">Vertical farming is the practice of producing food on vertically inclined surfaces. Instead of farming vegetables and other foods on a single level, such as in a field or a greenhouse, this method produces foods in vertically stacked layers commonly integrated into other structures like a skyscraper, shipping container or repurposed warehouse.
Using Controlled Environment Agriculture (CEA) technology, this modern idea uses indoor farming techniques. The artificial control of temperature, light, humidity, and gases makes producing foods and medicine indoor possible. In many ways, vertical farming is similar to greenhouses where metal reflectors and artificial lighting augment natural sunlight. The primary goal of vertical farming is maximizing crops output in a limited space.
</p>
<h3 class="wheatheading2"><strong>How Vertical Farming Works</strong></h3>
<p class="wheatpara12">There are four critical areas in understanding how vertical farming works:<br>1. Physical layout, 2. Lighting, 3. Growing medium, and 4. Sustainability features.</br>
Firstly, the primary goal of vertical farming is producing more foods per square meter. To accomplish this goal, crops are cultivated in stacked layers in a tower life structure. Secondly, a perfect combination of natural and artificial lights is used to maintain the perfect light level in the room. Technologies such as rotating beds are used to improve lighting efficiency.
Thirdly, instead of soil, aeroponic, aquaponic or hydroponic growing mediums are used. Peat moss or coconut husks and similar non-soil mediums are very common in vertical farming. Finally, the vertical farming method uses various sustainability features to offset the energy cost of farming. In fact, vertical farming uses 95 percent less water. 
</p>

</div>
</div>

<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-8">
<h3 class="wheatheading2"><strong>Advantages and Disadvantages of Vertical Farming</strong></h3>
<p class="wheatpara3">Vertical farming has a lot of promise and sounds like the farm of the future. However, there are a few stumbling blocks to consider before rushing full-speed ahead into vertical farming.</p>
<h4 class="wheatheading2"><strong>Advantages:</strong></h4>
<p class="wheatpara3">1.) Preparation for Future: By 2050, around 80 percent of the world population is expected to live in urban areas, and the growing population will lead to an increased demand for food. The efficient use of vertical farming may perhaps play a significant role in preparing for such a challenge. 
</p>
<p class="wheatpara3">2.) Increased And Year-Round Crop Production: Vertical farming allows us to produce more crops from the same square footage of growing area. In fact, 1 acre of an indoor area offers equivalent production to at least 4-6 acres of outdoor capacity. According to an independent estimate, a 30-story building with a basal area of 5 acres can potentially produce an equivalent of 2,400 acres of conventional horizontal farming. Additionally, year-round crop production is possible in a controlled indoor environment which is completely controlled by vertical farming technologies.
</p>
<p class="wheatpara3">3.) Human and Environmentally Friendly: Indoor vertical farming can significantly lessen the occupational hazards associated with traditional farming. Farmers are not exposed to hazards related to heavy farming equipment, diseases like malaria, poisonous chemicals and so on. As it does not disturb animals and trees inland areas, it is good for biodiversity as well.
</p>
<h4 class="wheatheading2"><strong>Disadvantages:</strong></h4>
<p class="wheatpara3">1.) Too Much Dependency on Technology: The development of better technologies can always increase efficiency and lessen costs. But the entire vertical farming is extremely dependent on various technologies for lighting, maintaining temperature, and humidity. Losing power for just a single day can prove very costly for a vertical farm. Many believe the technologies in use today are not ready for mass adoption. 
</p>
<p class="wheatpara3">2.) Labor Costs: As high as energy costs are in vertical farming, labor costs can be even higher due to their concentration in urban centers where wages are higher, as well as the need for more skilled labor. Automation in vertical farms, however, may lead to the need for fewer workers. Manual pollination may become one of the more labor-intensive functions in vertical farms. Over the next 10 years, vertical farming may generate 100,000 U.S. jobs.
</p>
<p class="wheatpara3">3.) Difficulties with Pollination: Vertical farming takes place in a controlled environment without the presence of insects. As such, the pollination process needs to be done manually, which will be labor intensive and costly.
</p>
<h3 class="wheatheading2"><strong>Conclusion</strong></h3>
<p class="wheatpara3">While the vertical farming market continues to make inroads in the U.S., Japan perhaps has seen the most success of any country. Japan already boasts 200 large-scale, farming as manufacturing plant factories, and China has another 80.
Even in Japan, however, an estimated 60% of vertical operations are unprofitable. And while vertical farming is a very small segment of the market, it is growing rapidly and is anticipated to hit $5.8 billion by 2022, with the greatest gains happening in the Asia-Pacific region. 
Vertical farming technologies are still relatively new. Companies are yet to successfully produce crops at scale and make it economically feasible to meet the growing food demand. The performance of farms like AeroFarms will determine how important a role vertical farming will play in the future to face the challenge of growing food demand.
It is worth noting, however, that technologies developed for vertical farms are also being adopted by other segments of the $300 billion indoor farming sector, such as greenhouses, which can utilize natural sunlight, albeit requiring much more real estate and longer routes to market. 
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

