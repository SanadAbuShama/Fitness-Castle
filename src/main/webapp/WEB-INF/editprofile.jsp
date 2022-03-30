<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
    crossorigin="anonymous" />
<style>
                        .logo {
                        width: 130px;
                        height: 100px;
                        margin-top: -40px;
                        margin-bottom: -20px;
                    }


                    .background {
                        background-image: url("/images/gym1.jpg"), url("/images/gym2.avif"), url("/images/gym3.avif");
                        background-repeat: no-repeat repeat-x repeat-y;
                        background-position: 10px 20px, 20px 30px, 15px 25px;

                    }


                    .blur {
                        background: rgba(255, 255, 255, 0.2);
                        backdrop-filter: blur(5px);
                        width: 100%;
                    }
    
.form-control, .form-select {
	background-color: rgba(255, 255, 255, 0.7) !important;
}

::-webkit-input-placeholder {
	color: #212529 !important;
}

::-moz-placeholder {
	color: red;
}

::-ms-placeholder {
	color: red;
}

::placeholder {
	color: red;
}
</style>

    <title>Document</title>
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
						<h3>Edit Your Profile Here</h3>
					</div>
					<div class="col text-end">
						<a href="/profile" class="btn btn-dark">Back to Profile</a>
					</div>
				</div>
				<div class="row">
					<div class="col text-start">
			<form:form action="/users/${user.id}/edit" method="post" modelAttribute="user">
					
			<input type="hidden" name="_method" value="put">
				<div class="form-floating my-3">
				  <form:input path="title" class="form-control" name = "first_name" id="floatingInput" placeholder="name@example.com"/>
				  <form:label path="title" for="floatingInput">First Name</form:label>
					<form:errors path="title" class = "my-3" style="color: red;"/>
				</div>
							<button type="submit" class="btn btn-dark float-end ms-2">Submit</button>
							<a href="/profile" class="btn btn-danger float-end">Cancel</a>
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