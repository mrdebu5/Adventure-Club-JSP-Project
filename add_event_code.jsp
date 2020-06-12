<%-- 
    Document   : add_event_code
    Created on : 26 Dec, 2019, 5:24:29 PM
    Author     : Langhanoja
--%>

<%@page import="connect.Myconnection"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add event code Page</title>
    </head>
    <body>
        <%

        MultipartRequest mrequest = new MultipartRequest(request, "C://Users//Langhanoja//Documents//NetBeansProjects//Advanture Club//build//web//activityimages");
        
        
        Enumeration files = mrequest.getFileNames();

        String filename ="";
        while(files.hasMoreElements())
        {
            String upload = (String)files.nextElement();
            filename = mrequest.getFilesystemName(upload);
        }
        
            
            Myconnection con  =new Myconnection();
            con.connect();
            
            String title = mrequest.getParameter("title");
            String photo = filename;// request.getParameter("photo");
            String details = mrequest.getParameter("details");
            String date = mrequest.getParameter("date");
            String fees = mrequest.getParameter("fees");
            
            String q="insert into event (title,photo,details,date,fees) values('"+title+"','"+photo+"','"+details+"','"+date+"','"+fees+"')";
            con.allquery(q);
             response.sendRedirect("view_event.jsp");
            
            %>
    </body>
</html>
