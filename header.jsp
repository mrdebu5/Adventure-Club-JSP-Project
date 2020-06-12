

<%
if(session.getAttribute("ad_id") == null)
{
    response.sendRedirect("login.jsp");
}
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
<!-- gallery -->
<link href='css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
<!-- //gallery -->
<!-- font -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/SmoothScroll.min.js"></script>
</head>
<body>
	<!-- banner -->
	<div class="banner bg-about">
		<div class="header-top about-header-top">
			<div class="container banner-drop">
				<div class="agile-logo">
					<h1><a href="index.jsp">Adventure<span>Club</span></a></h1>
				</div>
				<div class="header-right">
						<nav>
						  <ul>
							<li>
                                                            <a href="admin_home.jsp"><span>Home</span></a>
							</li>
							<li>
								<a href="about.jsp"><span>About</span></a>
							</li>
							<li class="dropdown">
                                                                    <a class="dropdown-toggle" data-toggle="dropdown"href="#">Gallery
                                                                    <span class="caret"></span></a>
                                                                    <ul class="dropdown-menu">
                                                                      <li><a href="add_gallery.jsp">Add Gallery</a></li>
                                                                      <li><a href="view_gallery.jsp">View Gallery</a></li>

                                                                    </ul>
                                                        </li>
							<li class="dropdown">
                                                                    <a class="dropdown-toggle" data-toggle="dropdown"href="#">Event
                                                                    <span class="caret"></span></a>
                                                                    <ul class="dropdown-menu">
                                                                      <li><a href="add_event.jsp">Add Event</a></li>
                                                                      <li><a href="view_event.jsp">View Event</a></li>

                                                                    </ul>
                                                                  </li>
							<li>
								<a href="feedback.jsp"><span>Feedback</span></a>
							</li>
                                                        <li>
                                                            <a href="logout.jsp"><span>logout</span></a>
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
		<div class="w3ls-heading">
			<h2>Let's Explore</h2>	
		</div>
	</div>
	<!-- //banner -->
</body>
</html>