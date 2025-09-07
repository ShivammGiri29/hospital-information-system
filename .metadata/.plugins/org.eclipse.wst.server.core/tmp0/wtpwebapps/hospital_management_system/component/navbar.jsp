<%@page isELIgnored="false" %>

<style>
/* Navbar background */
.navbar-custom {
    background: linear-gradient(90deg, #2C3E50, #34495E);
}

/* Nav links */
.navbar-nav .nav-link {
    color: white !important;
    font-weight: 500;
    margin-right: 14px;
    transition: 0.3s ease;
}
.navbar-nav .nav-link:hover {
    color: #f39c12 !important; /* Gold hover */
    transform: translateY(-2px);
}

/* Custom dropdown button */
.custom-btn {
    background-color: #f39c12; /* Gold */
    color: white;
    border: none;
    border-radius: 8px;
    padding: 6px 14px;
    transition: 0.3s;
}
.custom-btn:hover {
    background-color: #d68910;
    transform: scale(1.05);
}
</style>

<nav class="navbar navbar-expand-lg navbar-dark navbar-custom shadow-sm">
  <div class="container-fluid">
    
    <!-- Brand -->
    <a class="navbar-brand fw-bold" href="index.jsp">
      <i class="fa-solid fa-house-medical"></i> MEDI HOME
    </a>

    <!-- Mobile Toggler -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
            aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar Links -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

        <% 
           Object userObj = session.getAttribute("userObj");
           if (userObj == null) { 
        %>
            <!-- Not logged in -->
            <li class="nav-item"><a class="nav-link" href="admin_login.jsp"><i class="fa-solid fa-user-shield"></i> Admin</a></li>
            <li class="nav-item"><a class="nav-link" href="doctor_login.jsp"><i class="fa-solid fa-stethoscope"></i> Doctor</a></li>
            <li class="nav-item"><a class="nav-link" href="user_appointment.jsp"><i class="fa-solid fa-calendar-check"></i> Appointment</a></li>
            <li class="nav-item"><a class="nav-link" href="user_login.jsp"><i class="fa-solid fa-user"></i> User</a></li>

        <% 
           } else { 
        %>
            <!-- Logged in user -->
            <li class="nav-item"><a class="nav-link" href="user_appointment.jsp"><i class="fa-solid fa-calendar-check"></i> Appointment</a></li>
            <li class="nav-item"><a class="nav-link" href="view_appointment.jsp"><i class="fa-solid fa-eye"></i> View Appointment</a></li>

            <!-- User dropdown -->
            <div class="dropdown">
              <button class="btn custom-btn dropdown-toggle" type="button" 
                      id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fas fa-user-circle"></i> 
                <%= ((com.entity.User)userObj).getFullname() %>
              </button>
              <ul class="dropdown-menu dropdown-menu-end shadow">
                <li><a class="dropdown-item" href="changepassword.jsp"><i class="fa-solid fa-key"></i> Change Password</a></li>
                <li><a class="dropdown-item" href="userLogout"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
              </ul>
            </div>
        <% 
           } 
        %>

      </ul>
    </div>
  </div>
</nav>
