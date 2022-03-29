<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/newProgram.css">
<meta charset="ISO-8859-1">
<title>Add a program</title>
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
		<div class="row my-5">
			<div class="col-xl-8 col-md-10 offset-xl-2 offset-md-1 col">
				<div class="row mb-5">
					<div class="col">
						<h3>Create a program</h3>
					</div>
					<div class="col text-end">
						<a href="/programs" class="btn btn-dark">Back to programs</a>
					</div>
				</div>
				<div class="row">
					<div class="col text-start">
						<form:form action="/admin/programs" method="post"
							modelAttribute="newProgram">
							<div class="row">
								<div class="col-md-6 col-12">

									<div class="mb-3">
										<form:errors class="text-danger" path="name" />
										<form:input type="text" class="form-control" id="name"
											path="name" placeholder="Name" />
									</div>
									<div class="mb-3">
									<form:errors class="text-danger" path="category" />
										<form:select class="form-select"
											aria-label="Default select example" path="category">
											<option selected>Open this select menu</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</form:select>
									</div>
									<div class="mb-3">
										<form:errors class="text-danger" path="description" />
										<form:textarea class="form-control" id="description"
											path="description" placeholder="Description" rows="3"></form:textarea>
									</div>


									<div class="mb-3">
										<form:errors class="text-danger" path="day1" />
										<form:textarea class="form-control" id="day1" path="day1"
											placeholder="Day 1" rows="3"></form:textarea>
									</div>
									<div class="mb-3">
										<form:errors class="text-danger" path="day2" />
										<form:textarea class="form-control" id="day2" path="day2"
											placeholder="Day 2" rows="3"></form:textarea>
									</div>
									<div class="mb-3">
										<form:errors class="text-danger" path="day3" />
										<form:textarea class="form-control" id="day3" path="day3"
											placeholder="Day 3" rows="3"></form:textarea>
									</div>
								</div>
								<div class="col-md-6">

									<div class="mb-3">
										<form:errors class="text-danger" path="day4" />
										<form:textarea class="form-control" id="day4" path="day4"
											placeholder="Day 4" rows="3"></form:textarea>
									</div>
									<div class="mb-3">
										<form:errors class="text-danger" path="day5" />
										<form:textarea class="form-control" id="day5" path="day5"
											placeholder="Day 5" rows="3"></form:textarea>
									</div>
									<div class="mb-3">
										<form:errors class="text-danger" path="day6" />
										<form:textarea class="form-control" id="day1" path="day6"
											placeholder="Day 6" rows="3"></form:textarea>
									</div>
									<div class="mb-3">
										<form:errors class="text-danger" path="day7" />
										<form:textarea class="form-control" id="day1" path="day7"
											placeholder="Day 7" rows="3"></form:textarea>
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-dark float-end ms-2">Submit</button>
							<a href="/programs" class="btn btn-danger float-end">Cancel</a>
						</form:form>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>