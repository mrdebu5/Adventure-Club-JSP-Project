<%-- 
    Document   : view_event
    Created on : 16 Dec, 2019, 11:38:17 AM
    Author     : Langhanoja
--%>
     <%@page import="java.sql.ResultSet"%>
<%@page import="connect.Myconnection"%>
<%  
            Myconnection con  =new Myconnection();
            con.connect();
            if(request.getParameter("e_id")!=null)
            {
                String e_id=request.getParameter("e_id");
                String qd="delete from event where e_id='"+e_id+"'";
                con.allquery(qd);
                        
            }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Event</title>
    </head>
    <body>
         <%@include file="header.jsp" %>
      
		           <div class="container"><center><h1>View Event</h1></center></div>
        <hr>
        <div class="container">
                       
                        <form class="loginform">
                            <table class="table table-bordered">
                                   <tr>
                                        
                                        <td>Title</td>
                                        <td>Photo</td>
                                        <td>Details</td>
                                        <td>Date</td>
                                        <td>Fees</td>
                                        <td>Action</td>
                                </tr> 
                                  
                                
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
                                  
                                    <tr>
                                        <td><%= title %></td>
                                        <td><img src="activityimages/<%=photo%>" style="width:250px;height:250px" /></td>
                                        <td><%= details %></td>
                                       <td><%= date %></td>
                                       <td><%= fees %></td>
                                        <td><a href='edit_event.jsp?e_id=<%=e_id%>' class="btn btn-primary">Edit </a> / 
                                            <a href='view_event.jsp?e_id=<%=e_id%>' class="btn btn-danger">Delete</a>
                                        </td>
                                    </tr> 
                                    
                                    <%
                                        }
                                     %>
                                    
                            </table>       
                          </form>
			</div> 		
                          
        <hr>
        <%@include file="footer.jsp" %>
    </body>
</html>
