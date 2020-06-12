    <%-- 
    Document   : add_activity_code
    Created on : 26 Dec, 2019, 5:16:00 PM
    Author     : Langhanoja
--%>

<%@page import="connect.Myconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Activity Code Page</title>
    </head>
    <body>
        
        <%  
            Myconnection con  =new Myconnection();
            con.connect();
            
            String title = request.getParameter("title");
            String photo = request.getParameter("photo");
           
            String a_id=request.getParameter("a_id");
            String q="update activity set title='"+title+"',photo='"+photo+"' where a_id='"+a_id+"'";
            con.allquery(q);
            response.sendRedirect("view_activity.jsp");
            
            %>
    </body>
</html>
