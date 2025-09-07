
<%@ page import="com.db.DBConnect" %>
<%@ page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index page</title>
<%@include file="component/css.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.paint-card:hover {
	box-shadow: 10px 10px 10px 0 rgba(0, 0, 0, 0.6);
}

#dc:hover {
	box-shadow: 10px 10px 10px 10px rgba(0, 0, 0, 0.6);
}
</style>


</head>
<body>
	<%@ include file="component/navbar.jsp"%>
	
<% Connection conn=DBConnect.getConn();
out.print(conn);%>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hos2.jpg" class="d-block w-100" alt="..."
					height="580px">
			</div>
			<div class="carousel-item">
				<img src="img/dashboard.jpg" class="d-block w-100" alt="..."
					height="580px">
			</div>
			<div class="carousel-item">
				<img src="img/black2.jpg" class="d-block w-100" alt="..."
					height="580px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<div class="container p-3">
		<p class="text-center fs-2">Key Features Of Our Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Our system emphasizes cleanliness protocols to ensure a
									safe and healthy atmosphere for patients, staff, and visitors.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Saftey</p>
								<p>Our system supports safety protocols to minimize risks
									and maintain a secure healthcare environment..</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctor</p>
								<p>Friendly and approachable doctors help build trust,
									making patients feel more comfortable and cared for..</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Our hospital actively supports research initiatives to
									drive innovation and evidence-based medical practices..</p>
							</div>
						</div>
					</div>

				</div>
			</div>

			<div class="col-md-4">

				<img alt="" src="img/hos3.jpg" height="430px" id="dc">
			</div>
		</div>
	</div>
	<hr>

	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doctor4.jpg" width="250px" height="300px">
						<p class="fw-bold  fs-5">Abhishek Pathak</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doctor5.jpg" width="250px" height="300px">
						<p class="fw-bold  fs-5">Dr.Amruta Singh</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doctor3.jpg" width="250px" height="300px">
						<p class="fw-bold  fs-5">Dr.Aniket Kamble(MJ)</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doctor1.avif" width="250px" height="300px">
						<p class="fw-bold  fs-5">Dr.Satish Yadav</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			</div>
			</div>
			
			<%@ include file="component/footer.jsp" %>
</body>
</html>