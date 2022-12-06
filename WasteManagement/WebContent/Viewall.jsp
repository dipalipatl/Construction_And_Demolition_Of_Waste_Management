<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@ page import ="java.sql.*"%>
<%@ page import ="com.rcpit.management.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Pooled Admin Panel Category Flat Bootstrap Responsive Web Template | Tabels :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<!-- tables -->
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });

      $('#table-swap-axis').basictable({
        swapAxis: true
      });

      $('#table-force-off').basictable({
        forceResponsive: false
      });

      $('#table-no-resize').basictable({
        noResize: true
      });

      $('#table-two-axis').basictable();

      $('#table-max-height').basictable({
        tableWrapper: true
      });
    });
</script>
<!-- //tables -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
<div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
				<div class="header-main">
					<div class="logo-w3-agile">
								<h1><a href="index.html">Waste Management</a></h1>
							</div>
							
				     <div class="clearfix"> </div>	
				</div>
<!--heder end here-->
<ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a><i class="fa fa-angle-right"></i>View Vehicles</li>
            </ol>
<div class="agile-grids">	
				<!-- tables -->
				
				<div class="agile-tables">
					<div class="w3l-table-info">
					  <h2>Vehicle Details</h2>
					    <table id="table">
						<thead>
						  <tr>
							<th>Vehicle Number</th>
							<th>Driver Name</th>
							<th>Driver Contact</th>
							<th>Latitude</th>
							<th>Longitude</th>
							
						  </tr>
						  
						   <%
  Connection conn = ConnectionDB.connect();
  try
  {
	  PreparedStatement ps = conn.prepareStatement("select * from vehicle");
	  ResultSet rs = ps.executeQuery();
	  while(rs.next())
	  {
		  %>
		  <tr>
    <td><%=rs.getInt("number") %></td>
    <td><%=rs.getString("name") %></td>
    <td><%=rs.getString("mobile") %></td>
    <td><%=rs.getString("latitude") %></td>
    <td><%=rs.getString("longitude") %></td>
    <td><a href="delete.jsp?id=<%= rs.getInt("number")%>">Delete</a></td>
     
  </tr>
  <%
	  }
  }
  catch(Exception e)
  {
	  e.printStackTrace();  
  }
  %>
						
			<!---728x90--->
				  
				</div>
				<!-- //tables -->
			</div>



</div>
</div>
  <!--//content-inner-->
		<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo1">
						<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> 
					</header>
						<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
                           <div class="menu">
									<ul id="menu" >
			<li><a href="Welcome.html"><i class="fa fa-home"></i> <span>Home</span><div class="clearfix"></div></a></li>
			<li><a href="vehiclereg.html"><i class="fa fa-plus"></i> <span>Add Vehicle</span><div class="clearfix"></div></a></li>
			<li id="menu-academico" ><a href="Viewall.jsp"><i class="fa fa-eye nav_icon"></i><span>View Vehicle</span><div class="clearfix"></div></a></li>
			<li id="menu-academico" ><a href="update.html"><i class="fa fa-truck"></i><span>Update Vehicle</span><div class="clearfix"></div></a></li>
			<li id="menu-academico" ><a href="viewcnd.jsp"><i class="fa fa-eye nav_icon"></i><span>View CND Request </span><div class="clearfix"></div></a></li>
									 					 
										  </ul>
									 
								</div>
							  </div>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->	   

</body>
</html>