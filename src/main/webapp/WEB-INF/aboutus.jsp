<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/aboutus.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a id="navbar-brand" href="#"> <img class="logo"
				src="/images/logo.png" alt="" width="50" height="35" style="width: 130px; height: 100px; margin-top: -40px; margin-bottom: -20px;" />
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
      
      <!-- Page Content -->
      <div class="container">
        <div id="row1" class="row justify-content-center">
          <!-- Team Member 1 -->
          <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-0 shadow w-75">
              <img id="row" src="/images/Hassan.jpg" class="card-img-top" alt="...">
              <div class="card-body text-center">
                <h5 class="card-title mb-0">Hassan Odeh</h5>
                <div class="card-text text-black-50">Web Developer</div>
              </div>
            </div>
          </div>
          <!-- Team Member 2 -->
          <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-0 shadow w-75">
              <img id="row" src="/images/Rafat.jpg" class="card-img-top" alt="..." >
              <div class="card-body text-center">
                <h5 class="card-title mb-0">Rafat Darawshe</h5>
                <div class="card-text text-black-50">Web Developer</div>
              </div>
            </div>
          </div>
          <!-- Team Member 3 -->
          <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-0 shadow w-75">
              <img id="row" src="/images/sanad.jpg" class="card-img-top" alt="...">
              <div class="card-body text-center">
                <h5 class="card-title mb-0">Sanad Abu Shama</h5>
                <div class="card-text text-black-50">Web Developer</div>
              </div>
            </div>
          </div>
        </div>
        <!-- /.row -->
      </div>
</body>
</html>