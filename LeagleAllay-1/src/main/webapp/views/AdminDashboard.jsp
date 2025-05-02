<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String email1 = (String) session.getAttribute("adminMail");
    if (email1 == null) {
        response.setHeader("Cache-Control", "No-Cache");
        response.setHeader("Cache-Control", "No-Store");
        response.sendRedirect("/admin/login");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard | Kanun</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/views/css/style.css" rel="stylesheet">
</head>
<body style="background: linear-gradient(to right, #f8f9fa, #e9ecef); font-family: 'Segoe UI', sans-serif;">

<!-- Top Bar Start -->
<div class="top-bar">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3">
                <div class="logo">
                    <a href="/admin/dashboard">
                        <h1>Kanun Admin</h1>
                    </a>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="top-bar-right">
                    <div class="text">
                        <h2>24/7</h2>
                        <p>Admin Panel</p>
                    </div>
                    <div class="text">
                        <h2>+123 456 7890</h2>
                        <p>Admin Support</p>
                    </div>
                    <div class="social">
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Top Bar End -->
<!-- Nav Bar Start -->
<div class="nav-bar">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
            <a href="#" class="navbar-brand">ADMIN MENU</a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapseAdmin">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapseAdmin">
                <div class="navbar-nav mr-auto">
                    <a href="/admin/dashboard" class="nav-item nav-link active">Dashboard</a>
                    <a href="/admin/viewClients" class="nav-item nav-link">Clients</a>
                    <a href="/admin/viewLawyers" class="nav-item nav-link">Lawyers</a>
                    <a href="/admin/404page" class="nav-item nav-link">Cases</a>
                    <a href="/admin/404page" class="nav-item nav-link">Analytics</a>
                    <a href="/admin/404page" class="nav-item nav-link">Settings</a>
                </div>

                <div class="ml-auto">
                    <a class="btn btn-danger" href="/admin/logout">Logout</a>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Nav Bar End -->

<!-- Admin Dashboard Body -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-10 bg-white p-5 shadow-lg rounded text-center border border-secondary">
            <h2 class="mb-4 text-dark">Welcome to Admin Panel</h2>
            <p class="lead mb-4">Logged in as: <strong class="text-primary"><%= email1 %></strong></p>
            <i class="fas fa-user-cog fa-4x text-secondary mb-4"></i>

            <div class="row mt-4">
                <div class="col-md-4 mb-3">
                    <a href="/admin/viewClients" class="btn btn-outline-primary btn-block py-3">
                        <i class="fas fa-users"></i><br/>Manage Clients
                    </a>
                </div>
                <div class="col-md-4 mb-3">
                    <a href="/admin/viewLawyers" class="btn btn-outline-success btn-block py-3">
                        <i class="fas fa-user-tie"></i><br/>Manage Lawyers
                    </a>
                </div>
                <div class="col-md-4 mb-3">
                    <a href="/admin/404page" class="btn btn-outline-warning btn-block py-3">
                        <i class="fas fa-briefcase"></i><br/>Case Records
                    </a>
                </div>
                <div class="col-md-6 mb-3">
                    <a href="/admin/404page" class="btn btn-outline-info btn-block py-3">
                        <i class="fas fa-chart-line"></i><br/>Analytics
                    </a>
                </div>
                <div class="col-md-6 mb-3">
                    <a href="/admin/404page" class="btn btn-outline-dark btn-block py-3">
                        <i class="fas fa-cogs"></i><br/>Settings
                    </a>
                </div>
            </div>

            <a href="/admin/logout" class="btn btn-danger mt-4 px-5 py-2">
                <i class="fas fa-sign-out-alt"></i> Logout
            </a>
        </div>
    </div>
</div>

<!-- Footer -->
<jsp:include page="footer.jsp"></jsp:include>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
