<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/profilePage.css">
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
	<div class="container my-5">
		<div class="row my-5">
			<div
				class="my-5 col-md-8 offset-md-2 col-sm-10 offset-sm-1 col-xl-6 offset-xl-3">
				<div class="card mb-3 bg-dark text-light " style="max-width: 540px;">
					<div class="row g-0">
						<div class="col-md-4 col-12">
							<img src="/images/fitness.jpg" class="img-fluid rounded-start"
								alt="...">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">
									<c:out value="${loggedUser.firstName}" />
									<c:out value="${loggedUser.lastName}" />
								</h5>
								<ul class="list-group list-group-flush ">
									<li class="list-group-item bg-dark text-light"><a
										href="${loggedUser.email}"><c:out
												value="${loggedUser.email}" /></a></li>
									<li class="list-group-item bg-dark text-light"><c:out
											value="${loggedUser.subscribedProgram.name}" /></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<h4 class="my-3">Here's your program, stay motivated!</h4>
				<h4 class="my-3">
					<i> <c:out value="${loggedUser.subscribedProgram.name}" />
						with <c:out
							value="${loggedUser.subscribedProgram.creator.firstName}" />
					</i>
				</h4>
				<table class="table rounded-3 mb-0 bg-secondary text-light">
					<thead class="bg-light text-dark border border-dark">
						<tr>
							<th>Day</th>
							<th>Description</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<p class="fw-bold mb-1">Saturday</p>
								</div>
							</td>

							<td>
								<p class="fw-normal mb-1">
									<c:out value="${loggedUser.subscribedProgram.day1}" />
								</p>
							</td>
						</tr>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<p class="fw-bold mb-1">Sunday</p>
								</div>
							</td>

							<td>
								<p class="fw-normal mb-1">
									<c:out value="${loggedUser.subscribedProgram.day2}" />
								</p>
							</td>
						</tr>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<p class="fw-bold mb-1">Monday</p>
								</div>
							</td>

							<td>
								<p class="fw-normal mb-1">
									<c:out value="${loggedUser.subscribedProgram.day3}" />
								</p>
							</td>
						</tr>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<p class="fw-bold mb-1">Tuesday</p>
								</div>
							</td>

							<td>
								<p class="fw-normal mb-1">
									<c:out value="${loggedUser.subscribedProgram.day4}" />
								</p>
							</td>
						</tr>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<p class="fw-bold mb-1">Wednesday</p>
								</div>
							</td>

							<td>
								<p class="fw-normal mb-1">
									<c:out value="${loggedUser.subscribedProgram.day5}" />
								</p>
							</td>
						</tr>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<p class="fw-bold mb-1">Thursday</p>
								</div>
							</td>

							<td>
								<p class="fw-normal mb-1">
									<c:out value="${loggedUser.subscribedProgram.day6}" />
								</p>
							</td>
						</tr>
						<tr>
							<td>
								<div class="d-flex align-items-center">
									<p class="fw-bold mb-1">Friday</p>
								</div>
							</td>

							<td>
								<p class="fw-normal mb-1">
									<c:out value="${loggedUser.subscribedProgram.day7}" />
								</p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>