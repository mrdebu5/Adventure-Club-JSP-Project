<%-- 
    Document   : about.jsp
    Created on : 27 Dec, 2019, 5:48:45 PM
    Author     : Langhanoja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About us</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
	<!-- about -->
	<div class="about">
		<!-- about-top -->
		<div class="agileits-about-top">
			<div class="container">
				<div class="agileits-about-top-heading">
					<h3>Who we are</h3>
				</div>
				<div class="agileinfo-top-grids">
					<div class="col-sm-4 wthree-top-grid">
						<img src="images/r1.jpg" alt="" />
						<h4>Curabitur non blandit justo</h4>
						<p>Pellentesque auctor euismod lectus a pretium. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur ut elit at est tempus volutpat.nascetur ridiculus mus. Curabitur ut elit at est tempus volutpat.</p>
					</div>
					<div class="col-sm-4 wthree-top-grid">
						<img src="images/r3.jpg" alt="" />
						<h4>Curabitur non blandit justo</h4>
						<p>Pellentesque auctor euismod lectus a pretium. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur ut elit at est tempus volutpat.nascetur ridiculus mus. Curabitur ut elit at est tempus volutpat.</p>
					</div>
					<div class="col-sm-4 wthree-top-grid">
						<img src="images/r2.jpg" alt="" />
						<h4>Curabitur non blandit justo</h4>
						<p>Pellentesque auctor euismod lectus a pretium. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur ut elit at est tempus volutpat.nascetur ridiculus mus. Curabitur ut elit at est tempus volutpat.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //about-top -->
		
		<!-- choose -->
		<div class="jarallax w3-agileits-choose">
			<div class="container">
				<div class="agileits-about-top-heading agileits-w3layouts-choose-heading">
					<h3>Why choose us?</h3>
				</div>
				<div class="agile-choose-grids">
					<div class="col-sm-4 agile-choose-grid">
						<div class="choose-icon">
							<i class="fa fa-user" aria-hidden="true"></i>
						</div>
						<div class="choose-info">
							<h4>Suspendisse ornare vitae ex nec aliquam</h4>
							<p>Nunc et massa ut purus porta euismod quis eu erat. Nam ornare faucibus elit sed tempor. Quisque iaculis odio nibh, et auctor tellus rhoncus vel. Maecenas arcu neque, semper eu commodo ut, pharetra vitae erat.</p>
						</div>
					</div>
					<div class="col-sm-4 agile-choose-grid">
						<div class="choose-icon">
							<i class="fa fa-cogs" aria-hidden="true"></i>
						</div>
						<div class="choose-info">
							<h4>Suspendisse ornare vitae ex nec aliquam</h4>
							<p>Nunc et massa ut purus porta euismod quis eu erat. Nam ornare faucibus elit sed tempor. Quisque iaculis odio nibh, et auctor tellus rhoncus vel. Maecenas arcu neque, semper eu commodo ut, pharetra vitae erat.</p>
						</div>
					</div>
					<div class="col-sm-4 agile-choose-grid">
						<div class="choose-icon">
							<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
						</div>
						<div class="choose-info">
							<h4>Suspendisse ornare vitae ex nec aliquam</h4>
							<p>Nunc et massa ut purus porta euismod quis eu erat. Nam ornare faucibus elit sed tempor. Quisque iaculis odio nibh, et auctor tellus rhoncus vel. Maecenas arcu neque, semper eu commodo ut, pharetra vitae erat.</p>
						</div>
					</div>
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
		<!-- //choose -->
		
		<!-- team -->
		<div class="team">
			<div class="container">
				<div class="agileits-about-top-heading">
					<h3>Our Team</h3>
				</div>
				<div class="team-grids">
					<!-- Bottom to top-->
						<div class="col-sm-4 team-grid">
							<!-- normal -->
							<div class="ih-item circle effect10 bottom_to_top">
								<div class="img"><img src="images/team1.jpg" alt="img"></div>
								<div class="info">
									<h3>Devang Langhanoja</h3>
									<div class="icons">
										<ul>
											<li><a href="https://www.facebook.com/Devang.langhanoja"><i class="fa fa-facebook"></i></a></li>
											<li><a href="https://www.instagram.com/mr_debu_5/"><i class="fa fa-instagram"></i></a></li>
											
										</ul>
									</div>
								</div>
							</div>
							<!-- end normal -->
						</div>
						<div class="col-sm-4 team-grid">
                                                    
							<!-- normal -->
							<div class="ih-item circle effect10 bottom_to_top">
								<div class="img"><img src="images/t3.jpg" alt="img"></div>
								<div class="info">
									<h3>Devang Langhanoja</h3>
									<div class="icons">
										<ul>
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- end normal -->
						</div>
						<div class="col-sm-4 team-grid">
							<!-- normal -->
							<div class="ih-item circle effect10 bottom_to_top">
								<div class="img"><img src="images/t4.jpg" alt="img"></div>
								<div class="info">
									<h3>Steve Warner</h3>
									<div class="icons">
										<ul>
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- end normal -->
						</div>
						<div class="clearfix"> </div>
					<!-- end Bottom to top-->
				</div>
			</div>
		</div>
		<!-- //team -->
	</div>
	<!-- //about -->
        <%@include file="footer.jsp" %>
    </body>
</html>
