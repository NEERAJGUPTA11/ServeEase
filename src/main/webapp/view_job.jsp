<%@page import="java.util.List"%>
<%@page import="com.entity.Jobs"%>
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
<title>View Jobs</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body  style="background-color: #f0f1f2;">

<%@include file="all_component/navbar.jsp"%>

	<div class="container mb-5">
		<div class="row">
			<div class="col-md-12">

				<h5 class="text-center text-primary">All Available Services</h5>

			 	<c:if test="${not empty succMsg }">
					<div class="alert alert-success" role="alert">${succMsg }</div>
					<c:remove var="succMsg" />
				</c:if> 
                
                  <%
               JobDAO dao=new JobDAO(DBConnect.getConn());
               List<Jobs> list =dao.getAllJobs();
               for(Jobs j:list)
               {%>
            	   
            	   	<div class="card mt-2">
				
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>


             


						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription() %></p>
						
						<br>
						<div class="row">
							<div class="col col-md-3 d-inline">
								<input type="text" class="form-control form-control-sm"
									value="Location:<%=j.getLocation() %>" readonly>
							</div>

							<div class="col col-md-3 d-inline">
								<input type="text" class="form-control form-control-sm"
									value="Category:<%=j.getCategory() %> " readonly>
							</div>

							<div class="col col-md-3 d-inline">
								<input type="text" class="form-control form-control-sm"
									value="Status:<%=j.getStatus() %>" readonly>
							</div>
						</div>

						<h6 class="mt-3">
							Publish Date:<%=j.getPdate() %></h6>
						<div class=" text-center mt-4">
							<a href="edit_job.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-success text-white"><i
								class="fa-solid fa-pen-to-square"></i> Edit</a> <a
								href="delete?id=<%=j.getId()%>"
								class="btn btn-sm bg-danger text-white"><i
								class="fa-solid fa-trash"></i> Delete</a>
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