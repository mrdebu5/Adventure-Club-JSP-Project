<%-- 
    Document   : add_event
    Created on : 12 Dec, 2019, 5:58:37 PM
    Author     : Langhanoja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Event</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container"><center><h1>Add Event</h1></center></div>
        <hr>
        <div class="container">
            <form class="loginform" enctype="multipart/form-data" action="add_event_code.jsp" method="post">
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Title</label>
					    <div class="col-sm-5">
					      <input type="text" name="title" class="form-control" id="title" placeholder="Title">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Photo</label>
					    <div class="col-sm-5">
					      <input type="file" name="photo" class="form-control" id="photo" placeholder="Password">
					    </div>
					  </div>
					 <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Details</label>
					    <div class="col-sm-5">
                                                <textarea name="details" placeholder="Enter Details" id="details" ></textarea>
					    </div>
					  </div>
                                            <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Date</label>
					    <div class="col-sm-5">
					      <input type="date" name="date" class="form-control" id="date">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Fees</label>
					    <div class="col-sm-5">
					      <input type="text" name="fees" class="form-control" id="fees" placeholder="Enter Fees">
					    </div>
					  </div>
                                             <div class="form-group row">
					    <div class="col-sm-10">
					      <button type="submit" class="btn btn-primary">Add</button>
					    </div>
					  </div>
                                        </form>
			</div> 		
        <hr>
        <%@include file="footer.jsp" %>
    </body> 
</html>
