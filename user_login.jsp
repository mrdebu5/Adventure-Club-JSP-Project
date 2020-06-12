<%-- 
    Document   : login
    Created on : 11 Dec, 2019, 12:29:59 PM
    Author     : Langhanoja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bike World a Sports Category Flat Bootstrap responsive Website Template | Gallery :: w3layouts</title>
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
        <%@include file= "vheader.jsp" %>
         
        
    <hr><center> <h1>Uer Login</h1> </center><hr>
    <div class="container">
        <form class="loginform" action="user_login_code.jsp" method="post">
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
					    <div class="col-sm-5">
					      <input type="email" name="email" class="form-control" id="inputEmail3" placeholder="Email">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
					    <div class="col-sm-5">
					      <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="Password">
					    </div>
					  </div>
					  <div class="form-group row">
					    <div class="col-sm-10">
					      <button type="submit" class="btn btn-primary">Log-in</button>
					    </div>
					  </div>
					</form>
        </div>   
    <center><h3>New User?<a href="register.jsp">Sign-up</a></h3></center>
        <%@include file="footer.jsp" %>
    </body>
</html>
