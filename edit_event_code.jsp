<%-- 
    Document   : add_event_code
    Created on : 26 Dec, 2019, 5:24:29 PM
    Author     : Langhanoja
--%>

<%@page import="connect.Myconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add event code Page</title>
    </head>
    <body>
        <%
            Myconnection con  =new Myconnection();
            con.connect();
            
            String title = request.getParameter("title");
            String photo = request.getParameter("photo");
            String details = request.getParameter("details");
            String date = request.getParameter("date");
            String fees = request.getParameter("fees");
            
            
            String e_id=request.getParameter("e_id");
            String q="update event set title='"+title+"',photo='"+photo+"',details='"+details+"',date='"+date+"',fees='"+fees+"' where e_id='"+e_id+"'";
            con.allquery(q);
            response.sendRedirect("view_event.jsp");
            
            %>
    </body>
</html>
