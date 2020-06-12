
<%-- 
    Document   : veventdetail
    Created on : 24 Jan, 2020, 11:17:46 AM
    Author     : Langhanoja
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.Myconnection"%>
<%  
    
    
    
            Myconnection con  =new Myconnection();
            con.connect();
%>

<%@include  file="vheader.jsp" %>	<!-- //banner -->
<%
String e_id=request.getParameter("e_id");
String q="select * from event where e_id=" + e_id;
ResultSet rs =con.display(q);
rs.next(); 
String title=rs.getString("title");
String photo=rs.getString("photo");
String details=rs.getString("details");
String date=rs.getString("date");
String fees=rs.getString("fees");
%>                                            
	<!-- training -->
	<div class="training">
		<div class="w3l-training-grids">
			<div class="container">
				<div class="w3-training-heading">
					<h3><%=title%></h3>
				</div>
				<div class="w3ls-training-grids">
					<div class="col-md-8 agileits-training-left">
						<h4><%=details%></h4>
                                                <p>Fees <%=fees%></p>
                                                <p>Date <%=date%></p>
                                                <%
                                                if(session.getAttribute("r_id") !=null)
                                                {
                                                %>
						<a href="join_event_code.jsp?e_id=<%=e_id%>">Join Event</a>
                                                <%
                                                }
                                                else
                                                {
                                                %>
                                                <a href="user_login.jsp">For Join Event Login First</a>
                                                <%
                                                }
                                                %>
					</div>
					<div class="col-md-4 agileits-training-right">
						<img src="activityimages/<%=photo%>" style="width:350px;height:250px" />
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		
	</div>
	<!-- //training -->
	
	<!-- footer -->
        <%@include  file="footer.jsp" %>