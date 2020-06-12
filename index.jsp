<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.Myconnection"%>
<%  
            Myconnection con  =new Myconnection();
            con.connect();
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Adventure Club</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bike World Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script src="js/jarallax.js"></script>
</head>
<body>
	<!-- banner -->
	<div class="banner">
		
		<div class="w3ls-slider">
			<div class="header-top">
				<div class="container banner-drop">
					<div class="agile-logo">
						<h1><a href="index.html">Adventure<span>Club</span></a></h1>
					</div>
					<div class="header-right">
                                        <nav>
						  <ul>
							<li>
                                                            <a href="index.jsp"><span>Home</span></a>
							</li>
							<li class="active">
                                                            <a href="vevent.jsp"><span>Event</span></a>
							</li>
							<li>
                                                            <a href="vgallery.jsp"><span>Gallery</span></a>
							</li>
							<li>
                                                            <a href="vactivity.jsp"><span>Activity</span></a>
							</li>
                                                        <%
                                                            if(session.getAttribute("r_id")== null)
                                                            {
                                                        %>
							<li class="dropdown">
                                                                    <a class="dropdown-toggle" data-toggle="dropdown"href="#">Login
                                                                    <span class="caret"></span></a>
                                                                    <ul class="dropdown-menu">
                                                                      <li><a href="user_login.jsp">User login</a></li>
                                                                      <li><a href="login.jsp">Admin Login</a></li>

                                                                    </ul>
                                                                  </li>
							
                                                        <li>
                                                            <a href="register.jsp"><span>Registration</span></a>
							</li>
                                                        <%
                                                        }
                                                        else
                                                        {
                                                        %>
                                                        <li>
                                                            <a href="logout.jsp"><span>Logout</span></a>
							</li>
							<% } %>
                                                        <li>
								<a href="mail.html"><span>Feedback</span></a>
							</li>
						  </ul>
						</nav>							
                                                        <div class="menu-icon"><span></span></div>
					</div>
					<div class="clearfix"> </div>
					<script>
						(function($){
						  $(".menu-icon").on("click", function(){
								$(this).toggleClass("open");
								$(".container").toggleClass("nav-open");
								$("nav ul li").toggleClass("animate");
						  });
						  
						})(jQuery);
					</script>
				</div>
			</div>
					<div class="page-header__content">
						<div class="text-bg">
							<svg>
								<defs>
									<mask id="mask" x="0" y="0" width="100%" height="100%">
										<rect id="alpha" x="0" y="0" width="100%" height="100%"/>
										<text id="title1" x="50%" y="30%" dy="1em" letter-spacing="0.02em">Adventure</text>
									</mask>
									<mask id="mask-2" x="0" y="0" width="100%" height="100%">
										<rect id="alpha-2" x="-66%" y="0" width="85%" height="100%" transform="skewX(40)"/>
										<text id="title2" x="50%" y="30%" dy="1em" letter-spacing="0.02em">Bike</text>
									</mask>
									<mask id="mask-3" x="0" y="0" width="100%" height="100%">
										<rect id="alpha-3" x="-66%" y="0" width="70%" height="100%" transform="skewX(40)"/>
										<text id="title3" x="50%" y="30%" dy="1em" letter-spacing="0.02em">Bike</text>
									</mask>
								</defs>
								<rect id="base" x="0" y="0" width="100%" height="100%" mask="url(#mask)"/>
								<rect id="base-3" x="0" y="0" width="100%" height="100%" mask="url(#mask-2)"/>
								<rect id="base-4" x="0" y="0" width="100%" height="100%" mask="url(#mask-3)"/>
								<text id="title4" x="50%" y="30%" dy="1em" letter-spacing="0.02em">Bike</text>
							</svg>
						</div>
					</div>
				<div class="w3l-banner-grids">
					<div class="container">
						<div class="slider">
							<div class="callbacks_container">
								<ul class="rslides" id="slider4">
									<li>
										<div class="w3ls-text">
											<p>Welcome to the our site..</p>
											<a href="about.html">More</a>
										</div>
									</li>
									<li>
										<div class="w3ls-text">
											<p>We are providing you the next level adventure...</p>
											<a href="about.html">More</a>
										</div>
									</li>
									<li>
										<div class="w3ls-text">
											<p>We provide some event...</p>
											<a href="about.html">More</a>
										</div>
									</li>
									<li>
										<div class="w3ls-text">
											<p>To join event login into our site...</p>
											<a href="about.html">More</a>
										</div>
									</li>
									<li>
										<div class="w3ls-text">
											<p>You can never forget the experience of adventure..</p>
											<a href="about.html">More</a>
										</div>
									</li>
									<li>
										<div class="w3ls-text">
											<p>Extreme adventure in mountains... </p>
											<a href="about.html">More</a>
										</div>
									</li>
								</ul>
							</div>
							<script src="js/responsiveslides.min.js"></script>
							<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider4").responsiveSlides({
									auto: true,
									pager:true,
									nav:false,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							
								});
							 </script>
							<!--banner Slider starts Here-->
						</div>
					</div>
				</div>
		</div>
		<div class="social-grids">
			<div class="container">
				<div class="agileinfo-social-grids">
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- //banner -->
	
	<!-- services -->
	<div class="services">
		<div class="container">
			<div class="w3layouts-services-heading">
				<h2>New Event</h2>
			</div>
			<div class="w3-services-grids">
				
                                                                                                    <%
                                       String q="select * from event order by e_id desc limit 6";
                                        ResultSet rs =con.display(q);
                                        while(rs.next())
                                        {
                                           
                                            String title=rs.getString("title");
                                            String photo=rs.getString("photo");
                                            String details=rs.getString("details");
                                            String date=rs.getString("date");
                                            String fees=rs.getString("fees");
                                            String e_id=rs.getString("e_id");
                                            
                                   %>


                            <div class="col-md-4 w3l-services-grid">
					<div class="w3ls-services-img">
                                    <img src="activityimages/<%=photo%>" style="width:350px;height:250px" />
                                    
                                        </div>
					<div class="agileits-services-info">
						<h4><%=title%></h4>

					</div>
				</div>
				<% } %>
                                   
                                   <div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //services -->
	
	<!-- history -->
	<div class="jarallax history">
		<div class="container">
			<div class="agileinfo-history-grids">
				<div class="slider">
					<div class="callbacks_container">
						<ul class="rslides" id="slider3">
							<li>
								<div class="wthree-history-info">
									<h4>About</h4>
									<p>Adventure club is provide you  only on who provide many event like a River rafting , Paraglaiding , Rock climbing , Snow Tekking , Trekking , Biking etc......</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:false,
									nav:false,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							
								});
							 </script>
							<!--banner Slider starts Here-->
			</div>
		</div>
		<script type="text/javascript">
			/* init Jarallax */
			$('.jarallax').jarallax({
				speed: 0.5,
				imgWidth: 1366,
				imgHeight: 768
			})
		</script>
	</div>
	<!-- //history -->
	<!-- rides -->
	<div class="rides">
		<div class="container">
			<div class="w3-agileits-rides-heading">
				<h3>Top Activity</h3>
			</div>
			<div class="agileits-w3layouts-rides-grids">
			                                   <%
                                       String q1="select * from activity";
                                        ResultSet rs1 =con.display(q1);
                                        while(rs1.next())
                                        {
                                           
                                            String title=rs1.getString("title");
                                            String photo=rs1.getString("photo");
                                            
                                   %>

                            <div class="col-sm-4 rides-grid">
					<div class="rides-grid-info">
						<img src="activityimages/<%=photo%>" style="width:350px;height:250px" />
						<h4><%=title%></h4>
					</div>
				</div>
                                   <% } %>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //rides -->
	
	<!-- footer -->
	<!-- //footer -->
	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<p>Develop by:<a href="#"> Devang Langhanoja</a> | <a href="#"> Smit Thakkar</a> </p>
		</div>
	</div>
	<!-- //copyright -->
</body>	
</html>