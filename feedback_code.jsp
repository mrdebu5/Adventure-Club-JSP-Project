<%-- 
    Document   : feedback_code.jsp
    Created on : 30 Dec, 2019, 11:15:37 AM
    Author     : Langhanoja
--%>

<%@page import="connect.Myconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback code page</title>
    </head>
    <body>
      <%
            Myconnection con  =new Myconnection();
            con.connect();
            
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String massage = request.getParameter("massage");
            String date = request.getParameter("date");
            
            
            String f_id="1";
            String q="insert into feedback (name,email,massage,date) values('"+name+"','"+email+"','"+massage+"','"+date+"')";
            con.allquery(q);
             response.sendRedirect("view_feedback.jsp");
            
            %>
    </body>
</html>
