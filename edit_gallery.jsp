<%-- 
    Document   : add_gallery
    Created on : 20 Dec, 2019, 11:08:45 AM
    Author     : Langhanoja
--%>

<%@page import="connect.Myconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            
            Myconnection con  =new Myconnection();
            con.connect();

            String g_id= request.getParameter("g_id");
             String q="select * from gallery where g_id=" + g_id;
             ResultSet rs =con.display(q);
             rs.next();
             

                 String title=rs.getString("title");
                 String photo=rs.getString("photo");
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Gallery</title>
    </head>
    <body>
               <%@include file="header.jsp" %>
      <hr><center> <h1>Edit Gallery</h1> </center><hr>
      <div class="container">
          <form class="loginform" action="edit_gallery_code.jsp" method="post">
                                             <input type="hidden" name="g_id" value="<%=g_id%>">
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">Title</label>
					    <div class="col-sm-5">
                                                <input type="text" value="<%=title%>" name="title" class="form-control"  placeholder="Enter Title">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Photo</label>
					    <div class="col-sm-5">
                                                <input type="file" name="photo" value="<%=photo%>" class="form-control" >
					    </div>
					  </div>
					  <div class="form-group row">
					    <div class="col-sm-10">
					      <button type="submit" class="btn btn-primary">Edit</button>
					    </div>
					  </div>
					</form>
      </div>
          <hr>
          <%@include file="footer.jsp" %> 
    </body>
</html>
