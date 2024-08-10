<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp"%>

<style type="text/css">
.back-img {
	background: url("img/4img.png");
	width: 100%;
	height: 150vh;
	background-repeat: no-repeat;
	background-size: cover;
}

.footerImg{
	width: 100%;
}
</style>



</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	
	
	
	
		<div class="container-fluid back-img">
		<div class="text-side">
			<h1 class="text-black ">
				<i  class="fa-solid fa-house-user" aria-hidden="true"></i> Online Home Services
			</h1>
		</div>
	</div>
	<%@include file="all_component/footer.jsp" %>
	
</body>
</html>