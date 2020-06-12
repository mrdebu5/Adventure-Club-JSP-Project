<%-- 
    Document   : login_code
    Created on : 27 Dec, 2019, 5:24:17 PM
    Author     : Langhanoja
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.Myconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login code page</title>
    </head>
    <body>
        <%  
            Myconnection con  =new Myconnection();
            con.connect();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String  q="select * from admin where email='"+email+"' and  password ='"+password+"'";
            ResultSet rs=con.display(q);
            if(rs.next())
            {
                String ad_id=rs.getString("ad_id");
                
                session.setAttribute("ad_id", ad_id);
                response.sendRedirect("admin_home.jsp");
                
            }
            else
            {
               response.sendRedirect("login.jsp");
            }
            
            
            
            %>
    </body>
</html>
