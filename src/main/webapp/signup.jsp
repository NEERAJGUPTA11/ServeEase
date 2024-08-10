<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Page</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_component/navbar.jsp"%>



	<div class="container-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
			
				<div class="card ">
					
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>Registration</h5>
						</div>
						
					  <c:if test="${not empty succMsg }">
							<h4 class="text-center text-success">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if>  	
						
						
						<form action="add_user" method="post">
							<div class="form-group mb-3">
								<label>Enter Full Name</label> <input type="text" placeholder="Name"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name">
							</div>

							<div class="form-group mb-3">
								<label>Service Required</label> <input required="required" placeholder="Which type of service you want to avail of"
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="Service">
							</div>

							<div class="form-group mb-3">
								<label>Email</label> <input type="text" placeholder="Email"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email">
							</div>

							<div class="form-group mb-3">
								<label for="exampleInputPassword1">Create Password</label> <input
									required="required" placeholder="Password" type="password" class="form-control"
									id="exampleInputPassword1" name="password">
							</div>

							<button type="submit"
								class="btn btn-dark btn-outline-success badge-pill btn-block mt-2">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>