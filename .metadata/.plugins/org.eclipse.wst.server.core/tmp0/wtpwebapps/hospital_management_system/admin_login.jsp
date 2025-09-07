<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<%@include file="component/css.jsp"%>

<style>
.paint-card {
    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    border-radius: 12px;
    transition: 0.3s ease;
}
.paint-card:hover {
    box-shadow: 8px 8px 20px rgba(0,0,0,0.4);
}
.login-icon {
    color: #2C3E50;
}
.login-btn {
    background-color: #2C3E50;
    border: none;
    border-radius: 8px;
    transition: 0.3s ease;
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
                            <i class="fa-solid fa-user-tie fa-3x login-icon"></i>
                            <p class="fs-4 mt-2 fw-bold">Admin Login</p>
                        </div>

                        <!-- Success Message -->
                        <c:if test="${not empty succMsg}">
                            <p class="text-center text-success fs-5">${succMsg}</p>
                            <c:remove var="succMsg" scope="session"/>
                        </c:if>

                        <!-- Error Message -->
                        <c:if test="${not empty errorMsg}">
                            <p class="text-center text-danger fs-6">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session"/>
                        </c:if>

                        <!-- Login Form -->
                        <form action="adminLogin" method="post">
                            <div class="mb-3">
                                <label class="form-label">Email address</label>
                                <input required name="email" type="email" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <input required name="password" type="password" class="form-control">
                            </div>
                            <button type="submit" class="btn login-btn text-white col-md-12">
                                <i class="fa-solid fa-right-to-bracket"></i> Login
                            </button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
