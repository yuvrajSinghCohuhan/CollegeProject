<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String email = (String) session.getAttribute("email");
    String role = (String) session.getAttribute("role");
    if (email == null) {
        response.setHeader("Cache-Control", "No-Cache");
        response.setHeader("Cache-Control", "No-Store");
        response.sendRedirect("/user/login");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Client Dashboard | Kanun</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/views/css/style.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #dee2e6, #f8f9fa);
            font-family: 'Segoe UI', sans-serif;
        }
        .dashboard-panel {
            background: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
        }
        .dashboard-icon {
            font-size: 4rem;
            color: #007bff;
        }
        .btn-outline-primary, .btn-outline-success {
            padding: 20px;
            font-size: 1.1rem;
            font-weight: 500;
            border-radius: 12px;
        }
    </style>
</head>
<body>

<jsp:include page="DashHeader.jsp"></jsp:include>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-10 dashboard-panel text-center border border-light">
            <h2 class="mb-4 text-dark">Welcome to Client Dashboard</h2>
            <p class="lead mb-4">Logged in as: <strong class="text-primary"><%= email %></strong></p>
            <i class="fas fa-user-circle dashboard-icon mb-4"></i>

            <div class="row mt-4">
                <div class="col-md-6 mb-3">
                    <a href="/user/team" class="btn btn-outline-primary btn-block">
                        <i class="fas fa-user-tie"></i><br/>Find a Lawyer
                    </a>
                </div>
                <div class="col-md-6 mb-3">
                <%if("client".equalsIgnoreCase(role)){ %>
                    <a href="/user/userProfile" class="btn btn-outline-success btn-block">
                        <i class="fas fa-envelope-open-text"></i><br/>View Profile
                    </a>
                    <%}else{ %>
                    <a href="/user/profile" class="btn btn-outline-success btn-block">
                        <i class="fas fa-envelope-open-text"></i><br/>View Profile
                    </a>
                    <%} %>
                </div>
            </div>

            <a href="/user/logout" class="btn btn-danger mt-4 px-5 py-2">
                <i class="fas fa-sign-out-alt"></i> Logout
            </a>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
