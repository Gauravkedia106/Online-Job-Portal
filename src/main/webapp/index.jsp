<%@page import="com.DB.DBconnect" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file= "all_component/all_css.jsp" %>
<style type="text/css">

.back-img{
       background: url("image/Img1.jpg");
       width: 100%;
       height: 90vh;
       background-repeat: no-repeat;
       background-size: cover;
}

</style>

</head>
<body>
<%@include file= "all_component/navbar.jsp" %>


<%-- <% Connection conn = DBconnect.getConn();
out.println(conn);
 %> --%>

<div class="container-fluid back-img">

<div class="text-center">

<h1 class="text-white p-4">

<i class="fa-solid fa-book" style="color: #581188;"></i> Online Job Portal
</h1>


</div>

</div>

<%@include file= "all_component/footer.jsp" %>

</body>
</html>