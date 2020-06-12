<%-- 
    Document   : vgallery
    Created on : 24 Jan, 2020, 11:03:42 AM
    Author     : Langhanoja
--%>
<html>
    <head>
        <title>
            Activity Page
        </title>
    </head>
    <body>
        
   
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
					<h3>Activity</h3>
				</div>
				<div class="agileinfo-top-grids">
                                       <%
                                       String q="select * from activity";
                                        ResultSet rs =con.display(q);
                                         while(rs.next())
                                        {
                                           
                                            String title=rs.getString("title");
                                            String photo=rs.getString("photo");
                                            String g_id=rs.getString("a_id");
                                         
                                            
                                         %>
   
					
                                        <div class="col-sm-4 wthree-top-grid">
						<img src="activityimages/<%=photo%>" style="width:350px;height:250px" />
						<h4><%=title%></h4>
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