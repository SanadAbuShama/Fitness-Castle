<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/info.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		<div style="margin: auto; margin-top:40px;" class="container">
            <div class="row justify-content-center">
                <div class="col-4 mb-5" style="margin-top: 160px;">
                    <form class="row g-3 mb-5"  method="post" action="/add_info">
                        <h2>Add Information</h2>
                        <div class="form-floating mb-3 ">
                            <input type="number" class="form-control" id="floatingInput" placeholder="e.g. 10" name="age">
                            <label for="floatingInput">Age</label>
                        </div>
                        <div class="form-floating mb-3 ">
                            <input type="number" class="form-control" id="floatingInput" placeholder="e.g. 10" name="height">
                            <label for="floatingInput">Height(CM)</label>
                        </div>
                        <div class="form-floating mb-3 ">
                            <input type="number" class="form-control" id="floatingInput" placeholder="e.g. 10" name="weight">
                            <label for="floatingInput">Weight(KG)</label>
                        </div>               
                        <div class="d-grid gap-2 col-3 mx-auto">
                            <button class="btn btn-secondary btn-lg" type="submit" >Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>  
</body>
</html>