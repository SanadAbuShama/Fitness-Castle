<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>	
<!DOCTYPE html>
<html>
<head> 
<link rel="stylesheet" type="text/css" href="/css/registration.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Programs</title>
</head> 
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img class="logo"
				src="/images/logo.png" alt="" width="50" height="35" />
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Features</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Pricing</a>
					</li>
					<li class="nav-item"><a class="nav-link disabled">Disabled</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
    <div class="container-md-fluid  border-primary m-5 p-4 ">
        <h1  class="text-center">Welcome To Fitness Castle</h1>
        <div class="row justify-content-evenly">
            <div class="col-4" id="log">
                <form class="row g-3" method="POST" action="/login">
                    <h2>Login</h2>
                  <c:if test="${logoutMessage != null}">
                  <p class="text-light">
					<c:out value="${logoutMessage}"></c:out>
				  </p>
						
					</c:if>
					<c:if test="${errorMessage != null}">
						<p class="text-light">
							<c:out value="${errorMessage}"></c:out>
						</p>
					</c:if>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="e.g. 10" name="username">
                        <label for="floatingInput">Email</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" class="form-control" id="floatingInput" placeholder="e.g. 10" 
                            name="password">
                        <label for="floatingInput">Password</label>
                    </div>
                    <div class="d-grid gap-2 col-3 mx-auto">
                        <button class="btn btn-outline-light" type="submit">Login</button>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> 
                </form>
            </div>
        </div>
    </div>
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>