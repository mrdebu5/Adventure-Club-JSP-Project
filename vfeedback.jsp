<%-- 
    Document   : vfeedback
    Created on : 24 Jan, 2020, 12:01:54 PM
    Author     : Langhanoja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Page</title>
    </head>
    <body>
        <%@include file="vheader.jsp" %>
       	<!-- contact -->
	<div class="contact">
		<div class="container">
			<div class="agile-contact-form">
				<div class="col-md-6 contact-form-left">
					<div class="w3layouts-contact-form-top">
						<h3>How Feedback Help?</h3>
						<p>Your feedback is help us to improve the site Facilities...</p>
					</div>
					<div class="agileits-contact-address">
						<ul>
							<li><i class="fa fa-phone" aria-hidden="true"></i> <span>+1 234 567 8901</span></li>
							<li><i class="fa fa-phone fa-envelope" aria-hidden="true"></i> <span><a href="mailto:example@email.com">mail@example.com</a></span></li>
							<li><i class="fa fa-map-marker" aria-hidden="true"></i> <span>Eiusmod Tempor inclore Place,Kingsport 56777.</span></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 contact-form-right">
					<div class="contact-form-top">
						<h3>Send us a message</h3>
					</div>
					<div class="agileinfo-contact-form-grid">
						<form action="feedback_code.jsp" method="post">
							<input type="text" name="name" placeholder="Name" required="">
							<input type="email" name="email" placeholder="Email" required="">
							
							<textarea name="Message" placeholder="message" required=""></textarea>
                                                        <input type="date" name="date" required=""><br><br>
							<button class="btn1">Submit</button>
						</form>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			
			
		</div>
	</div>
        <%@include file="footer.jsp" %>
	<!-- //contact -->
    </body>
</html>
