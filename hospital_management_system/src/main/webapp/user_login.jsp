<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<%@include file="component/css.jsp"%>

<style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
    border-radius: 12px;
    transition: all 0.3s ease-in-out;
}
.paint-card:hover {
    box-shadow: 10px 10px 20px 0 rgba(0, 0, 0, 0.6);
    transform: translateY(-5px);
}
.login-icon {
    color: #2C3E50;
}
.login-btn {
    background-color: #2C3E50;
    border: none;
    transition: background-color 0.3s ease-in-out;
}
.login-btn:hover {
    background-color: #1A252F;
}
</style>
</head>

<body>
    <%@ include file="component/navbar.jsp"%>

    <div class="container p-5">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card paint-card">
                    <div class="card-body">
                        <div class="text-center">
                            <i class="fas fa-user-circle fa-3x login-icon"></i>
                            <p class="fs-4 mt-2 fw-bold">User Login</p>
                        </div>

                        <!-- Success Message -->
                        <c:if test="${not empty succMsg }">
                            <p class="text-center text-success fs-5">${succMsg}</p>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>

                        <!-- Error Message -->
                        <c:if test="${not empty errorMsg }">
                            <p class="text-center text-danger fs-6">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>

                        <!-- Login Form -->
                        <form action="userLogin" method="post">
                            <div class="mb-3">
                                <label class="form-label">Email Address</label>
                                <input required name="email" type="email" 
                                       class="form-control" placeholder="Enter your email">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <input required name="password" type="password" 
                                       class="form-control" placeholder="Enter your password">
                            </div>

                            <button type="submit" class="btn login-btn text-white col-md-12">Login</button>
                        </form>

                        <div class="text-center mt-3">
                            <span>Don't have an account? </span>
                            <a href="signup.jsp" class="text-decoration-none fw-bold" style="color:#2C3E50;">
                                Create one
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
