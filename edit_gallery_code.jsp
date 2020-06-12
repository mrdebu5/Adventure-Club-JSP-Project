<%-- 
    Document   : add_gallery_code
    Created on : 26 Dec, 2019, 5:42:34 PM
    Author     : Langhanoja
--%>

<%@page import="connect.Myconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Gallery Code page</title>
    </head>
    <body>
        
        <%
            Myconnection con  =new Myconnection();
            con.connect();
            String title = request.getParameter("title");
            String photo = request.getParameter("photo");
           
                
            String g_id=request.getParameter("g_id");
            String q="update gallery set title='"+title+"',photo='"+photo+"' where g_id='"+g_id+"'";
            con.allquery(q);
            response.sendRedirect("view_gallery.jsp");
            
            %>
        
    </body>
</html>
