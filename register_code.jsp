<%-- 
    Document   : register_code
    Created on : 26 Dec, 2019, 6:13:46 PM
    Author     : Langhanoja
--%>

<%@page import="connect.Myconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration page</title>
    </head>
    <body>
        
        <%
            Myconnection con  =new Myconnection();
            con.connect();
            
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password=request.getParameter("password");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String contact = request.getParameter("contact");
            
            
            String q="insert into registretion (name,email,password,gender,address,contact) values('"+name+"','"+email+"','"+password+"','"+gender+"','"+address+"','"+contact+"')";
            con.allquery(q);
            response.sendRedirect("user_login.jsp");
            
//            out.println(q);
            
        %>
        
    </body>
</html>
