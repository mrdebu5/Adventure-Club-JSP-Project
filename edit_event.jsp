<%-- 
    Document   : add_event
    Created on : 12 Dec, 2019, 5:58:37 PM
    Author     : Langhanoja
--%>

<%@page import="connect.Myconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
                Myconnection con  =new Myconnection();
                con.connect();
        
                String e_id=request.getParameter("e_id");
                String q="select * from event where e_id='"+e_id+"'";
                ResultSet rs =con.display(q);
                rs.next();
                    
                String title=rs.getString("title");
                String photo=rs.getString("photo");
                String details=rs.getString("details");
                String date=rs.getString("date");
                String fees=rs.getString("fees");
                

 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Event</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
      
                     <div class="container"><center><h1>Edit Event</h1></center></div>
        <hr>
        <div class="container">
            <form class="loginform"action="edit_event_code.jsp" >
                                             <input type="hidden" name="e_id" value="<%=e_id%>">
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Title</label>
					    <div class="col-sm-5">
                                                <input type="text" name="title" value="<%=title%>" class="form-control" id="title" placeholder="Title">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Photo</label>
					    <div class="col-sm-5">
                                                <input type="file" name="photo" value="<%=photo%>" class="form-control" id="photo" placeholder="Password">
					    </div>
					  </div>
					 <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Details</label>
					    <div class="col-sm-5">
                                                <textarea placeholder="Enter Details" value="<%=details%>" name="details" ></textarea>
					    </div>
					  </div>
                                            <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Date</label>
					    <div class="col-sm-5">
                                                <input type="date" name="date" value="<%=date%>" class="form-control" id="date">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Fees</label>
					    <div class="col-sm-5">
                                                <input type="text" name="fees" value="<%=fees%>" class="form-control" id="fees" placeholder="Enter Fees">
					    </div>
					  </div>
                                           
                                                <div class="col-sm-10">
					      <button type="submit" class="btn btn-primary">Edit</button>
					    </div>
                                           
                                        </form>
			</div> 		
        <hr>
       
        
        <%@include file="footer.jsp" %>
    </body> 
</html>
