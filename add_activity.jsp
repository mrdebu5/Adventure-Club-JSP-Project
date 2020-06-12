<%-- 
    Document   : add_activity
    Created on : 19 Dec, 2019, 6:02:32 PM
    Author     : Langhanoja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Activity</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
      <hr><center> <h1>Add Activity</h1> </center><hr>
      <div class="container">
          <form class="loginform" enctype="multipart/form-data" action="add_activity_code.jsp" method="post">
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">Title</label>
					    <div class="col-sm-5">
					      <input type="text" name="title" class="form-control" id="title" placeholder="Enter Title">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Photo</label>
					    <div class="col-sm-5">
					      <input type="file" name="photo" class="form-control" id="photo">
					    </div>
					  </div>
					  <div class="form-group row">
					    <div class="col-sm-10">
					      <button type="submit" class="btn btn-primary">Submit</button>
					    </div>
					  </div>
					</form>
      </div>
          <hr>
          <%@include file="footer.jsp" %>           
    </body>
</html>
