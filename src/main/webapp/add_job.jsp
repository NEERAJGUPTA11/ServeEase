<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	
<%@include file="all_component/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fa fa-user-friends fa-3x"></i>
						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert"> ${succMsg }</div>
							<c:remove var="succMsg" />
						</c:if>   

						<h5>Add Services</h5>
					</div>

					<form action="add_job" method="post">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" required="required"
								class="form-control" name="title">
						</div>

						<div class="form-row">

							<div class="form-group col-md-4 mt-3">
								<label>Location</label> <select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Choose...</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Baroda">Baroda</option>
									<option value="Chandigarh">Chandigarh</option>
									<option value="Coimbatore">Coimbatore</option>
									<option value="Chennai">Chennai</option>
									<option value="Delhi-NCR">Delhi</option>
									<option value="Dehradun">Dehradun</option>
									<option value="Dhule">Dhule</option>
									<option value="Hydrabad">Hydrabad</option>
									<option value="Kolkata">Kolkata</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Pune">Pune</option>
									<option value="Raipur">Raipur</option>
									<option value="Shirpur">Shirpur</option>
											
								</select>
							</div>
							<div class="form-group col-md-4 mt-3">
								<label>Category</label> <select class="custom-select"
									id="inlineFormCustomSelectPref" name="category">
									<option selected>Choose...</option>
									<option value="House Helper">House Helper</option>
									<option value="Electrical Service">Electrical Service</option>
									<option value="Plumber Service">Plumber Service</option>
									<option value="cook">Cook</option>
									<option value="AC Service">AC Service</option>
									<option value="Carpenter Services">Carpenter Services</option>
									<option value="Painter Services">Painter Services</option>
									<option value="Water Purifier Services">Water Purifier Services</option>
									<option value="Beauty Services">Beauty Services</option>
									<option value="Pest Control Services">Pest Control Services</option>
									<option value="Home Security(CCTV)">Home Security(CCTV)</option>

								</select>
							</div>

							<div class="form-group col-md-4 mt-3">
								<label>Status</label> <select class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-group mt-3">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
								
						</div>
						
						

						<button class="btn btn-success mt-3">Publish Service</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>