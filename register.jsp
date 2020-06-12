<%-- 
    Document   : add_gallery
    Created on : 20 Dec, 2019, 11:08:45 AM
    Author     : Langhanoja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration page</title>
    </head>
    <body>
               <%@include file="vheader.jsp" %>
      <hr><center> <h1>Register</h1> </center><hr>
      <div class="container">
          <form class="loginform" action="register_code.jsp" method="post" >
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
					    <div class="col-sm-5">
					      <input type="text" name="name" class="form-control" id="name" placeholder="Enter Name">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Email</label>
					    <div class="col-sm-5">
                                                <input type="email" name="email" class="form-control" id="email" placeholder="Enter Email">
					    </div>
					  </div>
                                          <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Password</label>
					    <div class="col-sm-5">
                                                <input type="password" name="password" class="form-control" id="password" placeholder="Enter Password">
					    </div>
					  </div>
              
                                           <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Gender</label>
                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id="gender"value="male" name="gender">
                                                <label class="form-check-label">Male</label>
                                                <input type="radio" class="form-check-input" id="gender" value="female" name="gender">
                                                <label class="form-check-label">female</label>
                                           </div>  
                                           </div>
                                             <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Address</label>
					    <div class="col-sm-5">
                                                <textarea placeholder="Enter Address" name="address" id="address" ></textarea>
					    </div>
					  </div>
                                             <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">Contact</label>
					    <div class="col-sm-5">
					      <input type="text" name="contact" class="form-control" id="contact" placeholder="Enter Contact no">
					    </div>
					  </div>
					  <div class="form-group row">
					    <div class="col-sm-10">
					      <button type="submit" class="btn btn-primary">Register</button>
					    </div>
					  </div>
					</form>
      </div>
          <hr>
          <%@include file="footer.jsp" %> 
    </body>
</html>
