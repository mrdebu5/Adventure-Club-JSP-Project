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
      
		           <div class="container"><center><h1>Home</h1></center></div>
        <hr>
        <div class="container">
            <p>Welcome Admin...</p>
			</div> 		
                          
        <hr>
        <%@include file="footer.jsp" %>
            
        
    </body>
</html>
