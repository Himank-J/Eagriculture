<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">      
<link rel="shortcut icon" href="img/favicon.png">
<title>Admin </title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
 
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />

<script>
$(function () {
$("#txtStartDt").datepicker();
});

$(function () {
$("#txtEndDate").datepicker();
});

</script>
</head>

<body>

<% String name=(String)session.getAttribute("aname");
if(name==null)
{
%>
	<% response.sendRedirect("adminlogin.jsp");%>
<%}%>
    
<form id="Form1">

<!-- container section start -->
<section id="container" class="">
<!--header start-->
<header class="header dark-bg">
<div class="toggle-nav">
<div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
</div>

<!--logo start-->
<a href="#" class="logo">Welcome<span class="lite"> ${ aname }</span></a>
<div class="nav search-row" id="top_menu">

<!--  search form start -->
<ul class="nav top-menu">
<li> </li>
</ul>

<!--  search form end -->
</div>

<div class="top-nav notification-row">

<!-- notificatoin dropdown start-->

<ul class="nav pull-right top-menu">
<li><a href="../AdminLogout"><i class="icon_key_alt"></i>Log Out</a></li>
</ul>
</li>

<!-- user login dropdown end -->
</ul>
<!-- notificatoin dropdown end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>

<div id="sidebar" class="nav-collapse ">
<!-- sidebar menu start-->

<ul class="sidebar-menu">
<li class="active"><a class="" href="Home.jsp"><i class="icon_house_alt"></i>
<span>Dashboard</span></a></li>
<li class="sub-menu"><a href="javascript:;" class=""><i class="icon_document_alt"></i>
<span>Collected Data</span>
<span class="menu-arrow arrow_carrot-right"></span></a>

<ul class="sub">
<li><a class="" href="viewcontact.jsp">Enquiries</a></li>
<li><a class="" href="view.jsp">Members</a></li>
<li><a class="" href="addproduct.jsp">Product</a></li>
<li><a class="" href="viewsoiltest.jsp">Rent Request</a></li>
<li><a class="" href="viewdemo.jsp">Demo Request</a></li>
<!--<li><a class="" href="addmachine.jsp">Machinery</a></li> -->
<!--<li><a class="" href="addproducttype.jsp">Product Type</a></li> -->
<li><a class="" href="vieworders.jsp">Orders</a></li>
</ul>

</li>
</ul>

<!-- sidebar menu end-->
</div>
</aside>
<!--sidebar end-->

<!--main content start-->
<section id="main-content">
<section class="wrapper">
<!--overview start-->
<div class="row">
<div class="col-lg-12">
<h3 class="page-header"><i class="fa fa-laptop"></i>Dashboard</h3>
<ol class="breadcrumb">
<li><i class="fa fa-home"></i><a href="#">Home</a></li>
<li><i class="fa fa-laptop"></i>Dashboard</li>
</ol>
</div>
</div>

<div class="row">
<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
<div class="info-box blue-bg">
<i class="material-icons">messenger</i>
<div class="count">             
</div>

<div class="title"><a href="viewcontact.jsp"><span style="color: white;">TOTAL ENQUIRIES</span></a></div>
</div>

<!--/.info-box-->
</div>
<!--/.col-->

<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
<div class="info-box brown-bg">
<i class="fa fa-users"></i>
<div class="count">                  
</div>

<div class="title"><a href="view.jsp"><span style="color: white;">OUR MEMBERS</span></a></div>
</div>
<!--/.info-box-->
</div>
<!--/.col-->

<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
<div class="info-box dark-bg">
<i class="icon_cart"></i>
<div class="count"></div>
<div class="title"><a href="addproduct.jsp"><span style="color: white;">OUR PRODUCTS</span> </a></div>
 </div>
<!--/.info-box-->
</div>
<!--/.col-->
                    
<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
<div class="info-box green-bg">
<i class="glyphicon glyphicon-tree-deciduous"></i>
<div class="count">
                              
</div>
<div class="title"><a href="viewsoiltest.jsp"><span style="color: white;">RENT REQUEST</span> </a></div>
</div>
<!--/.info-box-->
</div>
<!--/.col-->

<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
<div class="info-box blue-bg">
<i class="fa fa-wrench"></i>
<div class="count"></div>
<div class="title"><a href="viewdemo.jsp"><span style="color: white;">DEMO REQUEST</span></a></div>
</div>

<!--/.info-box-->
</div>
<!--/.col-->

<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
<div class="info-box brown-bg">
<i class="fa fa-shopping-bag"></i>
<div class="count">
                              
</div>
<div class="title"><a href="vieworders.jsp"><span style="color: white;">ORDERS</span> </a></div>
</div>
<!--/.info-box-->
</div>
<!--/.col-->

<!-- <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
<div class="info-box brown-bg">
<i class="fa fa-cogs"></i>
<div class="count"></div>
<div class="title"><a href="addmachine.jsp"><span style="color: white;">OUR MACHINERY</span></a></div>
</div>  -->

<!--/.info-box-->
</div>
<!--/.col-->

<!-- <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
<div class="info-box dark-bg">
<i class="fa fa-list-alt"></i>
<div class="count"></div>
<div class="title"><a href="addproducttype.jsp"><span style="color: white;">ADD PRODUCT TYPE</span> </a></div>
</div> -->

<!--/.info-box-->
</div>
<!--/.col-->

<!--/.info-box-->
</div>
</div>
<!--/.row-->

<div class="row">
</div>
<!-- Today status end -->
<div class="row">
</div>
<!-- statics end -->

<!-- project team & activity start -->
<div class="row">
                   
</div>
<br>
<br>
<div class="row">
</div>

<!-- project team & activity end -->
 </section>
</section>
<!--main content end-->
</section>
<!-- container section start -->
</form>

<!-- javascripts -->

<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="assets/jquery-knob/js/jquery.knob.js"></script>
<script src="js/jquery.sparkline.js" type="text/javascript"></script>
<script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="js/owl.carousel.js"></script>
<!-- jQuery full calendar -->
<script src="js/fullcalendar.min.js"></script>
<!-- Full Google Calendar - Calendar -->
<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="js/calendar-custom.js"></script>
<script src="js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="js/jquery.customSelect.min.js"></script>
<script src="assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="js/scripts.js"></script>
<!-- custom script for this page-->
<script src="js/sparkline-chart.js"></script>
<script src="js/easy-pie-chart.js"></script>
<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="js/jquery-jvectormap-world-mill-en.js"></script>
<script src="js/xcharts.min.js"></script>
<script src="js/jquery.autosize.min.js"></script>
<script src="js/jquery.placeholder.min.js"></script>
<script src="js/gdp-data.js"></script>
<script src="js/morris.min.js"></script>
<script src="js/sparklines.js"></script>
<script src="js/charts.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script>

//knob
$(function () {
$(".knob").knob({
'draw': function () {
$(this.i).val(this.cv + '%')
}
})
});
//carousel
$(document).ready(function () {
$("#owl-slider").owlCarousel({
navigation: true,
slideSpeed: 300,
paginationSpeed: 400,
singleItem: true
});
});
//custom select box

$(function () {
$('select.styled').customSelect();
});

/* ---------- Map ---------- */
$(function () {
$('#map').vectorMap({
map: 'world_mill_en',
series: {
regions: [{
values: gdpData,
scale: ['#000', '#000'],
normalizeFunction: 'polynomial'
}]
},

backgroundColor: '#eef3f7',
onLabelShow: function (e, el, code) {
el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
}
});
});

</script>



