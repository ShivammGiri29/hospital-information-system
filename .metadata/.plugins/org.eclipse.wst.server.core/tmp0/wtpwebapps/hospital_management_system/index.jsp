<%@ page import="com.db.DBConnect"%>
<%@ page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Hospital Management System</title>
<%@ include file="component/css.jsp" %>

<style>
/* Smooth scrolling for anchor links */
html {
    scroll-behavior: smooth;
}

/* Card Styles */
.paint-card {
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    border-radius: 12px;
    transition: all 0.3s ease-in-out;
    cursor: pointer;
}
.paint-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
}

/* Image Hover */
#dc {
    border-radius: 12px;
    transition: all 0.4s ease-in-out;
}
#dc:hover {
    transform: scale(1.05);
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.4);
}

/* Team Images */
.team-img {
    border-radius: 12px;
    object-fit: cover;
    height: 300px;
}

/* Section Headings */
.section-title {
    font-size: 2rem;
    font-weight: bold;
    margin-bottom: 1.5rem;
    color: #2C3E50;
    text-transform: uppercase;
    letter-spacing: 1px;
}

/* Carousel Overlay Text */
.carousel-item {
    position: relative;
}
.carousel-item .overlay-text {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: white;
    text-align: center;
    background: rgba(0, 0, 0, 0.4);
    padding: 20px 30px;
    border-radius: 10px;
}
.carousel-item .overlay-text h1 {
    font-size: 3rem;
    font-weight: bold;
    margin-bottom: 15px;
}
.carousel-item .overlay-text p {
    font-size: 1.2rem;
    margin-bottom: 15px;
}
.carousel-item .overlay-text .btn {
    font-size: 1rem;
    padding: 10px 20px;
}
.btn-learnmore {
    background-color: #2C3E50;  /* dark blue */
    color: #fff;
    border: none;
    padding: 10px 20px;
    font-weight: bold;
    border-radius: 8px;
    transition: all 0.3s ease-in-out;
}
.btn-learnmore:hover {
    background-color: #1ABC9C;  /* teal hover */
    transform: scale(1.05);
}

</style>
</head>

<body>
    <%@ include file="component/navbar.jsp" %>

    <!-- Hero Carousel -->
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></button>
        </div>

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/101.jpg" class="d-block w-100" alt="Hospital Surgery" style="height: 100vh; object-fit: cover;">
                <div class="overlay-text">
                    <h1>Welcome to Our Hospital</h1>
                    <p>Providing the best healthcare services with expert doctors.</p>
                    <a href="#featuress" class="btn btn-learnmore">Learn More</a>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/102.jpg" class="d-block w-100" alt="Hospital" style="height: 100vh; object-fit: cover;">
                <div class="overlay-text">
                    <h1>Compassionate Care</h1>
                    <p>Your health and comfort are our top priorities.</p>
                    <a href="#features" class="btn btn-learnmore">Learn More</a>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/103.jpg" class="d-block w-100" alt="Doctors" style="height: 100vh; object-fit: cover;">
                <div class="overlay-text">
                    <h1>Expert Doctors</h1>
                    <p>Our team of professionals ensures the best treatment possible.</p>
                    <a href="#team" class="btn btn-learnmore">Learn More</a>
                </div>
            </div>
        </div>

        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>

    <!-- Features Section -->
    <!-- ================= Key Features Section ================= -->
<section id="features" class="py-5 bg-light">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="fw-bold "style="text:#2C3E50;">Why Choose Us</h2>
            <p class="text-muted">Providing the best healthcare services with expert doctors and modern facilities.</p>
        </div>
        <div class="row g-4">
            <!-- Card 1 -->
            <div class="col-md-4">
                <div class="card shadow-lg border-0 h-100 text-center p-4">
                    <i class="fas fa-user-md fa-3x text-primary mb-3"></i>
                    <h5 class="fw-bold">Expert Doctors</h5>
                    <p class="text-muted">Our team of certified and experienced doctors is always ready to serve you.</p>
                </div>
            </div>
            <!-- Card 2 -->
            <div class="col-md-4">
                <div class="card shadow-lg border-0 h-100 text-center p-4">
                    <i class="fas fa-hospital fa-3x text-success mb-3"></i>
                    <h5 class="fw-bold">Modern Facilities</h5>
                    <p class="text-muted">State-of-the-art equipment and infrastructure for world-class healthcare.</p>
                </div>
            </div>
            <!-- Card 3 -->
            <div class="col-md-4">
                <div class="card shadow-lg border-0 h-100 text-center p-4">
                    <i class="fas fa-ambulance fa-3x text-danger mb-3"></i>
                    <h5 class="fw-bold">24/7 Support</h5>
                    <p class="text-muted">Emergency support and ambulance services available round the clock.</p>
                </div>
            </div>
        </div>
    </div>
</section>
    <hr>
    <div class="container py-5" id="featuress">
            <h2 class="fw-bold text-center  "style="text:#2C3E50;">Key Features Of Our Hospital</h2>
      <br>  <div class="row">
            <div class="col-md-8 col-sm-12 p-4">
                <div class="row g-3">
                    <div class="col-md-6">
                        <div class="card paint-card">
                            <div class="card-body">
                                <h5 class="fw-bold">Clean Environment</h5>
                                <p>We maintain strict cleanliness protocols to provide a safe and hygienic environment for patients and staff.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card paint-card">
                            <div class="card-body">
                                <h5 class="fw-bold">Safety First</h5>
                                <p>Advanced safety standards are followed to ensure risk-free healthcare services for everyone.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card paint-card">
                            <div class="card-body">
                                <h5 class="fw-bold">Friendly Doctors</h5>
                                <p>Our doctors are approachable, kind, and always ready to provide patient-centered care.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card paint-card">
                            <div class="card-body">
                                <h5 class="fw-bold">Medical Research</h5>
                                <p>We promote medical research and innovation to enhance treatments and healthcare outcomes.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Image -->
            <div class="col-md-4 col-sm-12 d-flex align-items-center justify-content-center">
                <img src="img/hos3.jpg" class="img-fluid" id="dc" alt="Hospital">
            </div>
        </div>
    </div>

    <hr>

    <!-- Team Section -->
    <div class="container py-5" id="team">
<div class="text-center mb-5">
            <h2 class="fw-bold "style="text:#2C3E50;">Meet Our Doctors</h2>
            <p class="text-muted">Our experienced medical specialists are here to care for you.</p>
        </div>        <div class="row g-4">
            <div class="col-md-3 col-sm-6">
                <div class="card paint-card text-center p-2">
                    <img src="img/doctor4.jpg" class="team-img" width="100%">
                    <h5 class="fw-bold mt-2">Abhishek Pathak</h5>
                    <p class="text-muted">(CEO & Chairman)</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="card paint-card text-center p-2">
                    <img src="img/doctor5.jpg" class="team-img" width="100%">
                    <h5 class="fw-bold mt-2">Dr. Amruta Singh</h5>
                    <p class="text-muted">(Chief Doctor)</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="card paint-card text-center p-2">
                    <img src="img/doctor3.jpg" class="team-img" width="100%">
                    <h5 class="fw-bold mt-2">Dr. Aniket Kamble (MJ)</h5>
                    <p class="text-muted">(Chief Doctor)</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="card paint-card text-center p-2">
                    <img src="img/doctor1.avif" class="team-img" width="100%">
                    <h5 class="fw-bold mt-2">Dr. Satish Yadav</h5>
                    <p class="text-muted">(Chief Doctor)</p>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="component/footer.jsp" %>
</body>
</html>
