<%-- 
    Document   : view_feedback
    Created on : 27 Dec, 2019, 5:32:34 PM
    Author     : Langhanoja
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.Myconnection"%>
<%  
            Myconnection con  =new Myconnection();
            con.connect();
             if(request.getParameter("f_id")!=null)
            {
                String f_id=request.getParameter("f_id");
                String qd="delete from feedback where f_id='"+f_id+"'";
                con.allquery(qd);
                        
            }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View feedback</title>
    </head>
    <body>
         <%@include file="header.jsp" %>
      
		           <div class="container"><center><h1>View Feedback</h1></center></div>
        <hr>
        <div class="container">
                       
                        <form class="loginform">
                            <table class="table table-bordered">
                                   <tr>
                                        <td>Name</td>
                                        <td>Email</td>
                                        <td>Massage</td>
                                        <td>Date</td>
                                        <td>Action</td>
                                </tr> 
                                  
                                      <%
                                       String q="select * from feedback";
                                        ResultSet rs =con.display(q);
                                        while(rs.next())
                                        {
                                           
                                            String name=rs.getString("name");
                                            String email=rs.getString("email");
                                            String massage=rs.getString("massage");
                                            String date=rs.getString("date");
                                            String f_id=rs.getString("f_id");
                                            
                                            
                                   %>
                           
                                    <tr>
                                        <td><%= name %></td>
                                        <td><%= email %></td>
                                        <td><%= massage %></td>
                                        <td><%= date %></td>
                                       
                                       
                                        <td><a href="#" class="btn btn-primary">Edit </a> / 
                                            <a href='view_feedback.jsp?f_id=<%=f_id%>' class="btn btn-danger">Delete</a>
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
