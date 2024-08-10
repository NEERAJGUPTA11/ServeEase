<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="all_component/all_css.jsp"%>
 <style>
       

        .colorful {
            text-color: #e473f7;
        }
    </style>
</head>
<body style="background-color: #f0f1f2;">

	 <c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>  
	
	<%@include file="all_component/navbar.jsp"%>

	<div class="container mb-5">
		<div class="row">
			<div class="col-md-12">
                 <div class="colorful">
				<h3 class="text-center text-primary">All Available Services</h3>
				</div>

			<%-- 	 <c:if test="${not empty succMsg }">
					<h4 class="text-center text-success">${succMsg }</h4>
					<c:remove var="succMsg" />
				</c:if>   --%>


				<div class="card">
					<div class="card-body">

						<form class="form-inline" action="more_view.jsp" method="get">
						<div class="from-group col-md-5 mt-1  ">
							<h5>Location</h5>
						</div>
						
						<div class="from-group col-md-5   ">
							<h5>Category</h5>
						</div>

						<div class="form-group col-md-5 mr-5 ">
							<select name="loc" class="custom-select bg-light text-dark border border-dark"
								id="inlineFormCustomSelectPref">
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
						
						

						<div class="form-group col-md-5 ">
							<select class="custom-select bg-light text-dark border border-dark" id="inlineFormCustomSelectPref"
								name="cat">
								<option value="ca" selected>Choose...</option>
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
						<br>
						<br>
						<button class="btn btn-sm bg-success text-white"><strong>Submit</strong></button>
						</form>

					</div>
				</div>

				<%
				JobDAO dao = new JobDAO(DBConnect.getConn());
				List<Jobs>list=dao.getAllJobsForUser();
				for(Jobs j:list){
				%>
				<div class="card mt-2 opacity-80 bg-light text-dark"
					style="box-shadow: 8px 9px 19px -10px rgba(33, 37, 41, 1);">
					<div class="card-body">
						<div class="text-center text-secondary">
							<i class="fa-regular fa-clipboard fa-2x"></i>
						</div>



						<h6><%=j.getTitle()%></h6>

						<%
						if (j.getDescription().length() > 0 && j.getDescription().length() < 150) {
						%>
						<p><%=j.getDescription()%></p>
						<%
						} else {
						%>
						<p><%=j.getDescription().substring(0, 150)%></p>...<%
						}
						%>


						<br>
						<div class="form-row">
							<div class="form-group col col-md-3 d-inline-block">
								<input type="text" class="form-control form-control-sm"
									value="Location: <%=j.getLocation()%>" readonly>
							</div>

							<div class="form-group col col-md-3 d-inline-block">
								<input type="text" class="form-control form-control-sm"
									value="Category: <%=j.getCategory()%>" readonly>
							</div>
						</div>

						<h6 class="mt-3">
							Publish Date:<%=j.getPdate().toString()%></h6>
						<div class=" text-center mt-4">
							<a href="one_view.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-success text-white"> View More</a>
						</div>
					</div>

				</div>
				<%
				}
				%>



			</div>
		</div>
		</div>
		<%@include file="all_component/footer.jsp"%>
</body>
</html>