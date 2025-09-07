<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<%@ include file="component/css.jsp"%>
<style type="text/css">

/* Card Styles */
.paint-card {
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    border-radius: 10px;
}

.paint-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);
}

/* Button Styles */
.login-btn {
    background-color: #2C3E50;
    border: none;
    transition: all 0.3s ease-in-out;
    border-radius: 8px;
    font-weight: bold;
}

.login-btn:hover {
    background-color: #1A252F;
    transform: scale(1.05);
}

/* Input Focus Effect */
.form-control:focus {
    border-color: #2C3E50;
    box-shadow: 0 0 6px rgba(44, 62, 80, 0.5);
}

</style>
</head>
<body>
    <%@ include file="component/navbar.jsp"%>

    <!-- Redirect if user not logged in -->
    <c:if test="${empty userObj }">
        <c:redirect url="user_login.jsp"></c:redirect>
    </c:if>

    <div class="container p-5">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card paint-card p-3">
                    <p class="text-center fs-3 fw-bold">Change Password</p>

                    <!-- Success Message -->
                    <c:if test="${not empty succMsg }">
                        <p class="text-center text-success fs-5">${succMsg}</p>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>

                    <!-- Error Message -->
                    <c:if test="${not empty errorMsg }">
                        <p class="text-center text-danger fs-5">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>

                    <div class="card-body">
                        <form action="userChangePassword" method="post">
                            
                            <div class="mb-3">
                                <label class="form-label">Enter Old Password</label>
                                <input type="password" name="oldPassword" 
                                       class="form-control" required autocomplete="off">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Enter New Password</label>
                                <input type="password" name="newPassword" 
                                       class="form-control" required autocomplete="off">
                            </div>

                            <input type="hidden" value="${userObj.id}" name="uid">

                            <button class="btn login-btn text-white col-md-12">
                                Change Password
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
