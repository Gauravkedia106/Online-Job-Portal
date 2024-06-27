<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Page</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color:#f0f1f2;">


<%@include file="all_component/navbar.jsp"%>

<div class="container-fluid">
		<div class="row p-5">

			<div class="col-md-4 offset-md-4">
				<div class="card-body">

					<div class="text-center">
						<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
						<h5>Registration</h5>

					</div>
					
					<c:if test="${not empty succMsg}">
					
					<h4 class="text-cdntre text-success">${succMsg}</h4>
					<c:remove var="succMsg"/>
					
					
					</c:if>
					<form action="add_user" method="post">
					
						<div class="form-group">
							<label for="exampleInputEmail1">Full Name</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Entre Full Name" name="name">
							
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Entre Qualification</label> <input
								type="password" class="form-control" id="exampleInputPassword1"
								placeholder="Qualification" name="qua">
						</div>
						
						<div class="form-group">
							<label for="exampleInputPassword1">Email</label> <input
								type="Email" class="form-control" id="exampleInputPassword1"
								placeholder="Entre Email" name="email">
						</div>
						
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" id="exampleInputPassword1"
								placeholder="Password" name="ps">
						</div>
						<button type="submit" class="btn btn-primary">Register</button>
					</form>

				</div>
			</div>
		</div>
	</div>



</body>
</html>