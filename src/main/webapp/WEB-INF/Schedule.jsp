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
    <title>Schedule</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <style>
        .logo {
            width: 130px; 
            height: 100px;
            margin-top: -40px;
            margin-bottom: -20px;
        }


        .background {
            background-image:  url("/images/gym3.avif");
            
        }


        .blur {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(5px);
            width: 100%;
			height:100%;
        }
    </style>

</head>

<body>
    <div class="background">
        <div class="blur">

            <nav id="navbar" class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img class="logo" src="/images/Logo.png" alt="">
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
                            <li class="my-2"><a href="/logout"
                                class="btn btn-outline-light me-2">Logout</a>
                            </li>
                            <li class="my-2"><a href="" class="btn btn-outline-light me-2">Profile</a>
                            </li>
                    
                        </ul>
                    </div>
                </div>
            </nav>
            <main class="container-sm mt-5">
                <div class="row mb-5">
					<div class="col">
						<h3 class="text-white" >Here's Your Schedule, Champ!</h3>
					</div>
					<div class="col text-end">
						<a href="/programs" class="btn btn-dark">Back to programs</a>
					</div>
				</div>

                <table class="table align-middle mb-0 bg-white">
                    <thead class="bg-light">
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
                                <p class="fw-normal mb-1">{also fill me}</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <p class="fw-bold mb-1">Sunday</p>
                                </div>
                            </td>

                            <td>
                                <p class="fw-normal mb-1">{also fill me}</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <p class="fw-bold mb-1">Monday</p>
                                </div>
                            </td>

                            <td>
                                <p class="fw-normal mb-1">{also fill me}</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <p class="fw-bold mb-1">Tuesday</p>
                                </div>
                            </td>

                            <td>
                                <p class="fw-normal mb-1">Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Mollitia porro et dolores veritatis repellendus at soluta maiores architecto
                                    repudiandae consequatur, nobis odit dicta dolorum hic iste officia alias pariatur
                                    similique?</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <p class="fw-bold mb-1">Wednesday</p>
                                </div>
                            </td>

                            <td>
                                <p class="fw-normal mb-1">{also fill me}</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <p class="fw-bold mb-1">Thursday</p>
                                </div>
                            </td>

                            <td>
                                <p class="fw-normal mb-1">Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                                    Culpa facere hic qui officia perspiciatis perferendis deleniti distinctio nihil
                                    praesentium. Eum, in. Debitis eum nihil porro voluptates, commodi architecto? Vitae,
                                    autem.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <p class="fw-bold mb-1">Friday</p>
                                </div>
                            </td>

                            <td>
                                <p class="fw-normal mb-1">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi
                                    culpa labore ratione corporis maxime est expedita, facere ipsam vitae, fugit itaque
                                    nobis id cupiditate harum recusandae natus fuga voluptates at?</p>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </main>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>

</html>