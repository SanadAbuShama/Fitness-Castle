<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/programs.css">
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
				<ul class="navbar-nav mb-2 mb-lg-0 ms-auto">
					<li class="my-2"><a href="" class="btn btn-outline-light me-2">Profile</a>
					</li>

					<li class="my-2"><a href="/logout"
						class="btn btn-outline-light me-2">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row my-5 row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
			<c:forEach var="program" items="${programs}">
				<div class="col">
					<div class="card h-100 bg-dark text-light">
						<c:choose>

							<c:when test="${program.image == null}">
								<img src="/images/logo.png" class="card-img-top" alt="..." />
							</c:when>
							<c:otherwise>

								<img src="${program.image}" class="card-img-top" alt="..." />
							</c:otherwise>
						</c:choose>

						<div class="card-body">
							<h5 class="card-title">
								<c:out value="${program.name}" />
							</h5>
							<p class="card-text">
								<c:out value="${program.description}" />
							</p>
							<p class="card-text">
								<a href="/programs/${program.id}/schedule"
									class="btn btn-outline-light">View Details</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>