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
        <title>Feedback Page</title>
    </head>
    <body>
        <%@include file="vheader.jsp" %>
        <div class="container"><center><h1>Feedback</h1></center></div>
        <hr>
        <div class="container">
            <form class="loginform" action="feedback_code.jsp" method="post">
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Name</label>
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
					    <label class="col-sm-2 col-form-label">Massage</label>
					    <div class="col-sm-5">
                                                <textarea placeholder="Enter Details" name="massage" id="details" ></textarea>
					    </div>
					  </div>
                                            <div class="form-group row">
					    <label class="col-sm-2 col-form-label">Date</label>
					    <div class="col-sm-5">
					      <input type="date" name="date" class="form-control" id="date">
					    </div>
					  </div>
					 
                                            <div class="form-group row">
					    <div class="col-sm-10">
					      <button type="submit" class="btn btn-primary">Sumbit</button>
					    </div>
					  </div>
                                        </form>
			</div> 		
        <hr>
        <%@include file="footer.jsp" %>
    </body> 
</html>
