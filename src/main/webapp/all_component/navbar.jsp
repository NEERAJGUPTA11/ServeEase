 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#">ServeEase</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto ">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp"><i class="fa-solid fa-house-chimney"></i> Home <span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="about.jsp"><i class="fa-solid fa-book"></i> About</a>
      </li>
      
      
     <c:if test="${userobj.role eq 'admin'}">
      
       <li class="nav-item">
        <a class="nav-link" href="add_job.jsp"><i
							class="fa fa-plus-circle"></i> Add Services</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="view_job.jsp"><i
							class="fa-solid fa-eye"></i> View  Services</a>
      </li>
   
     
     </c:if>
     
       <li class="nav-item">
        <a class="nav-link" href="contact.jsp"><i class="fa-solid fa-phone-volume"></i> Contact</a>
      </li>
      
      
       <li class="nav-item">
        <a class="nav-link" href="whyus.jsp"><i class="fa-solid fa-hand-point-right"></i> Why us ?</a>
      </li>
      
      
    </ul>
   
     <form class="form-inline my-2 my-lg-0">
     
     <c:if test="${userobj.role eq 'admin' }">
     
      <a href="#"class="btn btn-light mr-2" data-toggle="modal" data-target="#exampleModal"> <i class="fa-solid fa-right-to-bracket"></i>
       Admin </a>
               <a href ="logout"class="btn btn-light">
       <i class="fa-solid fa-user"></i> Logout </a>
       
       </c:if>
       
        <c:if test="${userobj.role eq 'user' }">
     
      <a href="#"class="btn btn-light mr-2" data-toggle="modal" data-target="#exampleModal"> <i class="fa-solid fa-right-to-bracket"></i>
       ${userobj.name}
        </a>
               <a href ="logout"class="btn btn-light">
       <i class="fa-solid fa-user"></i> Logout </a>
       </c:if>
       

     <!-- Login -->
     
      <c:if test="${empty userobj }">
     
      <a href="login.jsp"class="btn btn-light mr-2"> <i class="fa-solid fa-right-to-bracket"></i>
       Login </a> <a href ="signup.jsp"class="btn btn-light">
       <i class="fa-solid fa-user-plus">
       </i> Sign up </a>
     
     </c:if>
       </form>
  </div>
</nav>
    
    
    


<!-- Modal -->
<c:if test="${userobj.role eq 'user' }">
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Profile</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="card bg-dark text-white">
        <div class="card-body">
						<div class="text-center text-primary">
							<i class="fas fa-user-circle fa-3x"></i>
						</div>

						<table class="table text-white">
							<tbody>
								<tr>
									<th scope="row">Name</th>
									<th>${userobj.name}</th>
								</tr>

								<tr>
									<th scope="row">Service Required</th>
									<th>${userobj.service}</th>
								</tr>

								<tr>
									<th scope="row">Email</th>
									<th>${userobj.email}</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				
			</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Edit</button>
        
        <button type="button" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    </c:if>
    
    
    
    
    
    
    
    
    
    