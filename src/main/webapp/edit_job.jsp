<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@page import="com.DB.DBconnect" %>
<%@page import="com.entity.Jobs" %>


<%@page import="com.dao.JobDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Jobs</title>
<%@include file= "all_component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2;">

<c:if test="${userobj.role ne 'admin'}">
<c:redirect url="Login.jsp"></c:redirect>
</c:if>

<%@include file= "all_component/navbar.jsp" %>

<div class="container p-2">
		<div class="col-md-10 offset-md-1">
		 <div class="card">
				<div class="card-body">

					<div class="text-center text-success">
						<i class="fa fa-user-friends fa-3x" aria-hidden="true"></i>
						
						<%-- <c:if test="${not empty succMsg }">
						
						<div class="alert alert-success" role="alert">${ succMsg}</div>
						<c:remove var="succMsg"/>
						
						</c:if> --%>
						
						<%
						
						//int id = Integer.parseInt(request.getParameter("id"));
						int id = Integer.parseInt(request.getParameter("id"));
						JobDAO  dao = new JobDAO(DBconnect.getConn());
						Jobs j = dao.getJobById(id);
						
						%>
						
						<h5>Edit Jobs</h5>

					</div>
 
<form method="post" action="update">

<input type="hidden" value="<%=j.getId()%>" name="id">


 
    <div class="form-group">
      <label>Entre Title</label>
      <input name="title" type="text" class="form-control" id="" placeholder="Entre Title" value="<%=j.getTitle()%>">
    </div>
    
    <div class="form-row">
    <div class="form-group col-md-4">
      <label>Location</label>
    <select name="location" class="custom-select" id="inlineFormCustomeSelectPref" >
    <option value="<%= j.getLocation()%>"><%=j.getLocation()%></option>
  <option value="Odisha">Odisha</option>
  <option value="Jharkhand">Jharkhand</option>
  <option value="Delhi">Delhi</option>
  <option value="Banglore">Banglore</option>
  <option value="Hydreabad">Hydreabad</option>
  <option value="Chennai">Chennai</option>
                                        
</select>
</div> 


<div class="form-group col-md-4">
      <label>Category</label>
    <select name="category" class="custom-select" id="inlineFormCustomeSelectPref">
    <option value"<%=j.getCategory()%>"><%=j.getCategory()%></option>
  <option value="IT">IT</option>
  <option value="Devloper">Devloper</option>
  <option value="Banking">Banking</option>
  <option value="Enginer">Engineer</option>
   <option value="Teacher">Teacher</option>
 
</select>
</div> 
   
  
  <div class="form-group col-md-4">
    <label>Status</label>
    <select class="form-control" name="status">
    
 <option class="Active" value="<%=j.getCategory()%>"><%=j.getStatus()%></option>
  <option class="Active" value="Active">Active</option>
  <option class="Inactive" value="Inactive">Inactive</option>
</select>
  </div>
  </div>
  
  <!-- <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
   -->
    
    <div class="form-group">
      <label for="inputZip">Entre Description</label>
     <textarea requiredrows="6" cols="" name="desc" class="form-control" ><%=j.getDescription()%></textarea>
    </div>
  
  
<div> 
  <button type="submit" class="btn btn-success">Update Job</button>
</form>	
</div>
		
</div>
</div>
		</div>
		  </div>
	 




</body>
</html>