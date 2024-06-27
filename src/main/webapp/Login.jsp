<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<%@include file= "all_component/all_css.jsp" %>
</head>
<body>
<%@include file= "all_component/navbar.jsp" %>


<div class="container-fluid">
<div class="row p-5">

<div class="col-md-4 offset-md-4">
<div class="card-body">

<div class="text-center">
<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
<h5>Login Page</h5>

</div>

<c:if test="${not empty succMsg}">
<h4 class="text-centre text-danger">${succMsg}</h4>
<c:remove var="succMsg"/>
</c:if>  


<form action="login" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>
</div>
</div>
</div>

</body>
</html>
