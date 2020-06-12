<%-- 
    Document   : logout
    Created on : 24 Jan, 2020, 11:52:03 AM
    Author     : Langhanoja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%


if(session.getAttribute("ad_id")!=null)
{
    session.removeAttribute("ad_id");
    response.sendRedirect("login.jsp");
            
}
if(session.getAttribute("r_id")!=null)
{
    session.removeAttribute("r_id");
    response.sendRedirect("user_login.jsp");
            
}

%>