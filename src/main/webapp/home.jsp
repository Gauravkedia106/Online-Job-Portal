<%@page import="com.DB.DBconnect" %>

<%@page import="com.dao.JobDAO" %>

<%@page import="java.util.*" %> 
<%@page import="com.entity.Jobs" %>
<%@page import="com.entity.Jobs" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view Jobs</title>

<%@include file= "all_component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2;">


<c:if test="${empty userobj}">
<c:redirect url="Login.jsp"></c:redirect>
</c:if>  


<%@include file= "all_component/navbar.jsp" %>

<div class="container">
 <div class="row">
		<div class="col-md-12">
		 
		
					
						
						<h5 class="text-center text-center">All Jobs</h5>
						
						<%-- 	<c:if test="${not empty succMsg }">
						
						<div class="alert alert-success" role="alert">${ succMsg}</div>
						<c:remove var="succMsg"/>
						
						</c:if> --%>
						
						
			<%-- <%
			JobDAO  dao = new JobDAO(DBconnect.getConn());
			List<Jobs> list = dao.getAllJobs();
		
		for(Jobs j: list)
		{%>  --%>
		
		
			<div class="card">
 <div class="card-body">
 
 <form class="form-inline" action="more_view.jsp" method="get">
 
 <div class="form-group col-md-5 mt-1">
 <h5>Location</h5>
 </div>
 
  <div class="form-group col-md-4 mt-1">
 <h5>Category</h5>
 </div>
 
 <div class="form-group col-md-5">
      <label>Location</label>
    <select name="Loc" class="custom-select" id="inlineFormCustomeSelectPref" >
    <option selected value="lo">Choose...</option>
  <option value="Odisha">Odisha</option>
  <option value="Jharkhand">Jharkhand</option>
  <option value="Delhi">Delhi</option>
  <option value="Banglore">Banglore</option>
  <option value="Hydreabad">Hydreabad</option>
  <option value="Chennai">Chennai</option>
  
</select>
</div> 


<div class="form-group col-md-5">
      <label>Category</label>
    <select name="cat" class="custom-select" id="inlineFormCustomeSelectPref">
    <option selected value="ca" selected>Choose...</option>
  <option value="IT">IT</option>
  <option value="Devloper">Devloper</option>
  <option value="Banking">Banking</option>
  <option value="Enginer">Engineer</option>
   <option value="Teacher">Teacher</option>
 
</select>
</div> 

<button class="btn btn-success">Submit</button>
 
 </form>
 </div> 
 </div> 
 
 <%
 JobDAO dao = new JobDAO(DBconnect.getConn());
 List<Jobs> list = dao.getAllJobs();
 
 for(Jobs j: list){
 %>
 
 
 <div class="card mt-2">
 <div class="card-body">
		<div class="text-center text primary">
		
		<i class="far fa-clipboard fa-2x" ></i>
		
		</div>		
		

		
	<h6><%= j.getTitle() %></h6>
	
	<%
	if(j.getDescription().length()>0 && j.getDescription().length()<120) {
	
	%>
	
	
	 <p><%= j.getDescription() %></p> 
	 <%
	 }
	 else {
	 %>
	 <p><%= j.getDescription().substring(0,120) %>...</p> 
	 
	 <%
	 }
	%>
	<br>

<div class="form-row">
  <div class="form-group col-md-3">
  <input type="text" class="form-control form-control-sm" value="Location:<%=j.getLocation() %>" readonly>
  
  </div>
  
   <div class="form-group col-md-3">
  <input type="text" class="form-control form-control-sm" value="Category:<%= j.getCategory() %>" readonly>
  
  </div>
  </div>
  
<%--    <div class="form-group col-md-3">
  <input type="text" class="form-control form-control-sm" value="Status:<%= j.getStatus() %>" readonly>
  
  </div> --%>
 


<h6>Publish Date:<%=j.getPdate().toString() %></h6>
<div class="text-center">

<a href="one_view.jsp?id=<%=j.getId() %>"

   class="btn btn-sm bg-success text-white">View more</a>

<%-- <a href="edit_job.jsp?id=<%=j.getId() %>" class="btn btn btn-sm bg-success text-white" >Edit</a>
<a href="delete?id=<%=j.getId() %>" class="btn btn btn-sm bg-danger text-white" >Delete</a> --%>




</div>
</div>

<%
}
 %>

</div>

		
			
		<%-- <%
		}
		 %> --%>
		 
</div>
</div>
</div>
						
