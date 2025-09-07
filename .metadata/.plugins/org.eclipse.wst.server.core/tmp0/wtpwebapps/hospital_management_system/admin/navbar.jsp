<%@page isELIgnored="false" %>

<style>
/* Custom navbar styles */
.navbar-nav .nav-link {
    padding-left: 15px;
    padding-right: 15px;
    color: white !important;
    transition: 0.3s;
}
.navbar-nav .nav-link:hover {
    color: #f1c40f !important; /* Yellow hover */
}
.custom-btn {
    background-color: #2C3E50;
    color: white;
    border: none;
    border-radius: 8px;
    padding: 6px 12px;
    transition: 0.3s;
}
.custom-btn:hover {
    background-color: #1A252F;
}
</style>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#2C3E50;">
  <div class="container-fluid">
    <!-- Brand Logo -->
    <a class="navbar-brand" href="index.jsp">
      <i class="fa-solid fa-house-medical"></i> MEDI HOME
    </a>

    <!-- Toggler for mobile -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false"
      aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        <li class="nav-item">
          <a class="nav-link" href="doctor.jsp">
            <i class="fa-solid fa-user-doctor"></i> DOCTOR
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="view_doctor.jsp">
            <i class="fa-solid fa-eye"></i> VIEW DOCTOR
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="patient.jsp">
            <i class="fa-solid fa-user"></i> PATIENT
          </a>
        </li>

      </ul>

      <!-- Admin dropdown -->
      <form class="d-flex">
        <div class="dropdown">
          <button class="btn custom-btn dropdown-toggle" type="button"
            id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user-shield"></i> Admin
          </button>
          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="../adminLogout">
              <i class="fa-solid fa-right-from-bracket"></i> Logout
            </a></li>
          </ul>
        </div>
      </form>
    </div>
  </div>
</nav>
