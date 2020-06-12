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
             if(request.getParameter("g_id")!=null)
            {
                String g_id=request.getParameter("g_id");
                String qd="delete from gallery where g_id='"+g_id+"'";
                con.allquery(qd);
                        
            }
          
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Gallery</title>
    </head>
    <body>
         
                     <%@include file="header.jsp" %>
      
		           <div class="container"><center><h1>View Gallery</h1></center></div>
        <hr>
        <div class="container">
                       
                        <form class="loginform">
                            <table class="table table-bordered">
                                   <tr>
                                      
                                       <td>Title</td>
                                        <td>Photo</td>
                                        <td>Action</td>
                                    </tr> 
                                    <%
                                       String q="select * from gallery";
                                        ResultSet rs =con.display(q);
                                         while(rs.next())
                                        {
                                           
                                            String title=rs.getString("title");
                                            String photo=rs.getString("photo");
                                            String g_id=rs.getString("g_id");
                                         
                                            
                                   %>
                                     <tr>
                                         <td><%= title %></td>
                                         <td><img src="activityimages/<%=photo%>" style="width:450px;height:250px" /></td>
                                   
                                       
                                        <td><a href='edit_gallery.jsp?g_id=<%=g_id%>' class="btn btn-primary">Edit </a> / 
                                            <a href='view_gallery.jsp?g_id=<%=g_id%>' class="btn btn-danger">Delete</a>
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
