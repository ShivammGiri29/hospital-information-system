<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #2C3E50;">
	<div class="container-fluid">
		
		<!-- Logo -->
		<a class="navbar-brand fw-bold" href="index.jsp">
			<i class="fas fa-solid fa-hospital"></i> MEDI HOME
		</a>

		<!-- Mobile Menu Toggle -->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Menu Items -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item">
					<a class="nav-link active hover-link" href="index.jsp">HOME</a>
				</li>
				<li class="nav-item">
					<a class="nav-link hover-link" href="patient.jsp">PATIENT</a>
				</li>

			</ul>
			

			<!-- Right side (User Dropdown) -->
			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle d-flex align-items-center"
						type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						<i class="fas fa-user-circle me-2"></i> ${doctObj.fullname}
					</button>
					<ul class="dropdown-menu dropdown-menu-end shadow"
						aria-labelledby="dropdownMenuButton1">
						<li>
							<a class="dropdown-item hover-dropdown" href="editProfile.jsp">
								<i class="fas fa-edit me-2"></i> Edit Profile
							</a>
						</li>
						<li>
							<a class="dropdown-item hover-dropdown" href="../doctorLogout">
								<i class="fas fa-sign-out-alt me-2"></i> Logout
							</a>
						</li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>

<!-- Extra Hover Styling -->
<style>
	/* Navbar link hover */
	.hover-link {
		transition: color 0.3s ease-in-out;
	}
	.hover-link:hover {
		color: #f1c40f !important; /* gold hover effect */
	}

	/* Dropdown item hover */
	.hover-dropdown {
		transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
	}
	.hover-dropdown:hover {
		background-color: #2C3E50;
		color: #fff;
	}
</style>
