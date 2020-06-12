<%-- 
    Document   : add_activity
    Created on : 19 Dec, 2019, 6:02:32 PM
    Author     : Langhanoja
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.Myconnection"%>
<%  
            Myconnection con  =new Myconnection();
            con.connect();
             if(request.getParameter("r_id")!=null)
            {
                String r_id=request.getParameter("r_id");
                String qd="delete from registretion where r_id='"+r_id+"'";
                con.allquery(qd);
                        
            }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Register</title>
    </head>
    <body>
         
                     <%@include file="header.jsp" %>
      
		           <div class="container"><center><h1>View Register</h1></center></div>
        <hr>
        <div class="container">
                       
                        <form class="loginform">
                            <table class="table table-bordered">
                                   <tr>
                                       
                                       <td>Name</td>
                                       <td>Email</td>
                                       <td>Gender</td>
                                       <td>Address</td>
                                       <td>Contact</td>
                                       <td>Action</td>
                                </tr> 
                                 <%
                                       String q="select * from registretion";
                                        ResultSet rs =con.display(q);
                                        while(rs.next())
                                        {
                                           
                                            String name=rs.getString("name");
                                            String email=rs.getString("email");
                                            String gender=rs.getString("gender");
                                            String address=rs.getString("address");
                                            String contact=rs.getString("contact");
                                             String r_id=rs.getString("r_id");
                                            
                                   %>
                                <tr>
                                    <td><%= name%></td>
                                    <td><%= email %></td>
                                    <td><%= gender %></td>
                                    <td><%= address %></td>
                                    <td><%= contact%></td>
                                    <td><a href="#" class="btn btn-primary">Edit </a> / 
                                            <a href='view_register.jsp?r_id=<%=r_id%>' class="btn btn-danger">Delete</a>
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
