<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                    crossorigin="anonymous" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Document</title>
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
                </style>

                <link href="/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
                <!--Arrow-->
                <link href="/css/style.css" rel="stylesheet">


            </head>

            <body>
                <div class="background">
                    <div class="blur">

                        <nav id="navbar" class="navbar navbar-expand-lg navbar-dark bg-dark">
                            <div class="container-fluid">
                                <a class="navbar-brand" href="#">
                                    <img class="logo" src="/images/logo.png" alt="">
                                </a>
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNav">
                                    <ul class="navbar-nav">
                                        <li class="nav-item">
                                            <a style="color: teal;" class="nav-link active" href="">Home</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active" aria-current="page" href="#Biceps">Biceps &
                                                forearms</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active" aria-current="page" href="#triceps ">Triceps
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#Back">Back</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#Chest">Chest</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#Shoulders">Shoulders</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#Legs">Legs</a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link active" href="#Cardio">Cardio</a>
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

                        <section id="Biceps" class="portfolio">
                            <div class="container">

                                <div class="section-title">
                                    <h2>Bicebs & Forearm</h2>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12 d-flex justify-content-center">
                                        <ul id="portfolio-flters">
                                            <li data-filter="*" class="filter-active">Arm</li>
                                            <li data-filter=".filter-Bicebs">Bicebs</li>
                                            <li data-filter=".filter-forearm">forearms</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="row portfolio-container">

                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="images/bi1.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="/images/bi2.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="/images/bi3.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="/images/bi4.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="/images/bi5.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="/images/bi6.png" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-forearm">
                                        <div class="portfolio">
                                            <img src="/images/for1.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-forearm">
                                        <div class="portfolio">
                                            <img src="/images/for2.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-forearm">
                                        <div class="portfolio">
                                            <img src="/images/for3.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section><!-- End Portfolio Section -->
                        <section id="triceps" class="portfolio">
                            <div class="container">

                                <div class="section-title">
                                    <h2>Triceps</h2>
                                </div>


                                <div class="row portfolio-container">

                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="/images/tri1.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="/images/tri2.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="/images/tri3.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="/images/tri4.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 portfolio-item filter-Bicebs">
                                        <div class="portfolio">
                                            <img src="/images/tri5.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section><!-- End Portfolio Section -->
                        <section id="Back" class="back">
                            <div class="container">

                                <div class="section-title">
                                    <h2>Back</h2>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12 d-flex justify-content-center">
                                        <ul id="back-flters">
                                            <li data-filter="*" class="filter-active">Back</li>
                                            <li data-filter=".filter-lats">Lats</li>
                                            <li data-filter=".filter-trps">Traps</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="row back-container">

                                    <div class="col-lg-4 col-md-6 back-item filter-lats">
                                        <div class="back">
                                            <img src="/images/back6.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 back-item filter-lats">
                                        <div class="portfolio">
                                            <img src="/images/back3.png" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 back-item filter-lats">
                                        <div class="portfolio">
                                            <img src="/images/back4.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 back-item filter-trps">
                                        <div class="portfolio">
                                            <img src="/images/back5.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 back-item filter-trps">
                                        <div class="portfolio">
                                            <img src="/images/back1.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 back-item filter-trps">
                                        <div class="portfolio">
                                            <img src="/images/back2.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </section><!-- End Portfolio Section -->
                        <section id="Chest" class="chest">
                            <div class="container">

                                <div class="section-title">
                                    <h2>Chest</h2>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12 d-flex justify-content-center">
                                        <ul id="chest-flters">
                                            <li data-filter="*" class="filter-active">Chest </li>
                                            <li data-filter=".filter-upper">Upper-chest</li>
                                            <li data-filter=".filter-lower">Lower-chest</li>
                                            <li data-filter=".filter-mid">Mid-chest</li>

                                        </ul>
                                    </div>
                                </div>

                                <div class="row chest-container">

                                    <div class="col-lg-4 col-md-6 chest-item filter-upper">
                                        <div class="chest">
                                            <img src="/images/chest1.png" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 chest-item filter-upper">
                                        <div class="chest">
                                            <img src="/images/chest.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 chest-item filter-upper">
                                        <div class="chest">
                                            <img src="/images/chest3.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 chest-item filter-lower">
                                        <div class="chest">
                                            <img src="/images/chest4.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 chest-item filter-lower">
                                        <div class="chest">
                                            <img src="/images/chest5.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 chest-item filter-lower">
                                        <div class="chest">
                                            <img src="/images/chest6.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 chest-item filter-mid">
                                        <div class="chest">
                                            <img src="/images/chest7.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 chest-item filter-mid">
                                        <div class="chest">
                                            <img src="/images/chest8.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 chest-item filter-mid">
                                        <div class="chest">
                                            <img src="/images/chest9.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </section><!-- End Portfolio Section -->
                        <section id="Shoulders" class="chest">
                            <div class="container">

                                <div class="section-title">
                                    <h2>Shoulders</h2>
                                </div>


                                <div class="row chest-container">

                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/shou1.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/shou2.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/shou3.webp" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/shou4.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/shou5.jpg" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/shou6.webp" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </section><!-- End Portfolio Section -->
                        <section id="Legs" class="Legs">
                            <div class="container">

                                <div class="section-title">
                                    <h2>Legs</h2>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12 d-flex justify-content-center">
                                        <ul id="Legs-flters">
                                            <li data-filter="*" class="filter-active">Legs </li>
                                            <li data-filter=".filter-glutes">Glutes</li>
                                            <li data-filter=".filter-quads">Quads</li>
                                            <li data-filter=".filter-hamstrings ">Hamstrings </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="row Legs-container">

                                    <div class="col-lg-4 col-md-6 Legs-item filter-glutes">
                                        <div class="Legs">
                                            <img src="/images/leg1.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 Legs-item filter-glutes">
                                        <div class="Legs">
                                            <img src="/images/leg2.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 Legs-item filter-glutes">
                                        <div class="Legs">
                                            <img src="/images/leg3.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 Legs-item filter-quads">
                                        <div class="Legs">
                                            <img src="/images/leg4.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 Legs-item filter-quads">
                                        <div class="Legs">
                                            <img src="/images/leg5.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 Legs-item filter-quads">
                                        <div class="Legs">
                                            <img src="/images/leg6.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 Legs-item filter-hamstrings ">
                                        <div class="Legs">
                                            <img src="/images/leg7.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 Legs-item filter-hamstrings ">
                                        <div class="Legs">
                                            <img src="/images/leg8.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 Legs-item filter-hamstrings ">
                                        <div class="Legs">
                                            <img src="/images/leg9.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section><!-- End Portfolio Section -->

                        <section id="Cardio" class="chest">
                            <div class="container">

                                <div class="section-title">
                                    <h2>Cardio</h2>
                                </div>


                                <div class="row chest-container">

                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/card1.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/card2.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/card3.webp" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/card4.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/card5.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="chest">
                                            <img src="/images/card6.gif" class="img-fluid" alt="">
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </section><!-- End Portfolio Section -->

                    </div>
                </div>
                <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                        class="bi bi-arrow-up-short"></i></a>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                    crossorigin="anonymous"></script>
                <!-- Vendor JS Files -->
                <script src="/vendor/isotope-layout/isotope.pkgd.min.js"></script> <!-- filter files -->

                <!-- Template Main JS File -->
                <script src="/js/main.js"></script>
            </body>

            </html>