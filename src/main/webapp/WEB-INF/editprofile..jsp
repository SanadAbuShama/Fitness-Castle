<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />

	<title>Edit Profile</title>
	<link href="/css/editprofile.css" rel="stylesheet">

</head>

<body>
	<div class="background">
		<div class="blur">


			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<div class="container-fluid">
					<a class="navbar-brand" href="#"> <img class="logo" src="/images/logo.png" alt="" width="50"
							height="35" />
					</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav">

							<li class="nav-item">
								<a style="color: teal;" class="nav-link active" href="">Home</a>
							</li>
						</ul>
		<ul class="navbar-nav mb-2 mb-lg-0 ms-auto">
							<li class="my-2"><a href="" class="btn btn-outline-light me-2">Profile</a>
							</li>

							<li class="my-2"><a href="/logout" class="btn btn-outline-light me-2">Logout</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="container-fluid px-1 py-5 mx-auto">
				<div class="row d-flex justify-content-center">
					<div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
						<div class="col">
							<div class="col text-end">
								<a href="/profile" class="btn btn-dark">Back to Profile</a>
							</div>
						</div>
						<div class="card">
							<h5 class="text-center mb-4">Edit Your Profile Here</h5>
							<form:form action="/users/${user.id}/edit" method="post"
							modelAttribute="user">
										<input type="hidden" name="_method" value="put">
							
								<div class="row justify-content-between text-left">
									<div class="form-group col-sm-6 flex-column d-flex"> <label
											class="form-control-label px-3">First name:<span class="text-danger">
												*</span></label> <form:input type="text" id="firstname" path="firstName" name="firstName"
											placeholder="Enter your first name"/> </div>
									<div class="form-group col-sm-6 flex-column d-flex"> <label
											class="form-control-label px-3">Last name:<span class="text-danger">
												*</span></label> <form:input type="text" id="lastname" path="lastName" name="lastName"
											placeholder="Enter your last name"/> </div>
								</div>
								<div class="row justify-content-between text-left">
									<div class="form-group col-sm-6 flex-column d-flex"> <label
											class="form-control-label px-3">Email:<span class="text-danger">
												*</span></label>
										<form:input type="text" id="email" path="email" name="email" placeholder=""/>
									</div>
								</div>
								<div class="row justify-content-between text-left">
								</div>

								<div class="row justify-content-center">
									<div class="form-group col-6"> 
										<button type="submit"class="btn-block btn-primary">Update Information</button>
									</div>
									<div class="form-group ">

										<a href="/profile" class="btn  btn-danger ">Cancel</a>
									</div>

								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

</body>

</html>