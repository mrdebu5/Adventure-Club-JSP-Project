<%-- 
    Document   : vevent
    Created on : 24 Jan, 2020, 11:16:04 AM
    Author     : Langhanoja
--%>
<html>
    <head>
        <title>Event Page</title>
    </head>
    <body>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="vheader.jsp" %>


<%@page import="java.sql.ResultSet"%>
<%@page import="connect.Myconnection"%>
<%  
            Myconnection con  =new Myconnection();
            con.connect();
%>
<!-- about -->
	<div class="about">
		<!-- about-top -->
		<div class="agileits-about-top">
			<div class="container">
				<div class="agileits-about-top-heading">
					<h3>Event</h3>
				</div>
				<div class="agileinfo-top-grids">
                                                                        <%
                                       String q="select * from event";
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

					
                                        <div class="col-sm-4 wthree-top-grid">
						<img src="activityimages/<%=photo%>" style="width:350px;height:250px" />
                                                <h4><a href="veventdetail.jsp?e_id=<%=e_id%>"> <%=title%></a></h4>
					</div>
                                         <% } %>
					
                                    <div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //about-top -->
		
		<!-- choose -->
		<!-- //choose -->
		
		<!-- team -->
		<!-- //team -->
	</div>
	<!-- //about -->
        <!-- footer --><%@include file="footer.jsp" %>
        
</body>
</html>