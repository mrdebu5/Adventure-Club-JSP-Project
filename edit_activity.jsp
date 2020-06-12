<%-- 
    Document   : edit_activity
    Created on : 19 Dec, 2019, 6:09:18 PM
    Author     : Langhanoja
--%>

<%@page import="connect.Myconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            Myconnection con  =new Myconnection();
            con.connect();
            
            String a_id=request.getParameter("a_id");
            String q="select * from activity where a_id='"+a_id+"'";
            ResultSet rs =con.display(q);
            rs.next();
                     
                                           
            String title=rs.getString("title");
            String photo=rs.getString("photo");
                                            
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Activity</title>
    </head>
    <body>
          <%@include file="header.jsp" %>
      <hr><center> <h1>Edit Activity</h1> </center><hr>
      <div class="container">
                                        <form class="loginform"action="edit_activity_code.jsp">
                                             <input type="hidden" name="a_id" value="<%=a_id%>">
                                            
 					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">Title</label>
					    
                                            <div class="col-sm-5">
                                                <input type="text" value="<%=title%>" name="title" class="form-control" id="title" placeholder="Enter Title">
					    </div>
					  </div>
					  
                                          <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Photo</label>
                                              <div class="col-sm-5">
                                                  <input type="file" value="<%=photo%>" name="photo" class="form-control" id="photo">
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
