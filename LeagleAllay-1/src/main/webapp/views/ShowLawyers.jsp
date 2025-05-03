<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.Entities.Lawyer" %>
<%@ page import="java.util.*" %>
<%
    String email1 = (String) session.getAttribute("adminMail");
    if (email1 == null) {
        response.sendRedirect("/admin/login");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Show Lawyers</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="/views/css/style.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <style>
        /* Custom Styling */
        .highlight {
            background-color: #f8f9fa;
        }

        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }

        .table tbody tr:hover {
            background-color: #f1f1f1;
            cursor: pointer;
            transform: scale(1.02);
            transition: 0.2s;
        }

        .table td i {
            margin-right: 8px;
        }

        .no-data {
            text-align: center;
            font-size: 1.5rem;
            color: #6c757d;
            padding: 50px;
        }

        .lawyer-info {
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 1rem;
            margin-bottom: 15px;
        }

        .lawyer-info i {
            color: #007bff;
            margin-right: 10px;
        }

        .lawyer-image {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 15px;
        }

        .section-header h2 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #333;
        }

        .btn-action {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 8px 12px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .btn-action:hover {
            background-color: #218838;
        }

    </style>
</head>
<body>
    <div class="wrapper">
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

        <div class="container mt-5">
            <div class="section-header mb-4">
                <h2>All Lawyers</h2>
            </div>

            <%
                List<Lawyer> lawyers = (List<Lawyer>) session.getAttribute("lawyers");
                if (lawyers != null && !lawyers.isEmpty()) {
            %>
            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>#</th>
                        <th>Lawyer Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Specialization</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        int index = 1;
                        for (Lawyer lawyer : lawyers) {
                    %>
                    <tr class="highlight">
                        <td><%= index++ %></td>
                        <td><%= lawyer.getName() %></td>
                        <td>
                            <div class="lawyer-info">
                                <i class="fas fa-envelope"></i><%= lawyer.getEmail() %>
                            </div>
                        </td>
                        <td>
                            <div class="lawyer-info">
                                <i class="fas fa-phone-alt"></i><%= lawyer.getPhone() %>
                            </div>
                        </td>
                        <td><%= lawyer.getSpecialization() %></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <%
                } else {
            %>
            <div class="no-data">No lawyers found.</div>
            <%
                }
            %>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
