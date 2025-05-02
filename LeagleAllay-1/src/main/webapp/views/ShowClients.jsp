<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.example.demo.Entities.Client"%>
<%@page import="java.util.*"%>
<%
    String email1 = (String) session.getAttribute("email");
    if (email1 == null) {
        response.sendRedirect("/admin/login");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Show Clients</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Bootstrap & FontAwesome -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    <!-- Your Custom CSS -->
    <link href="/views/css/style.css" rel="stylesheet">

    <style>
        .section-header h2 i {
            color: #007bff;
            margin-right: 10px;
        }
        .client-table th, .client-table td {
            vertical-align: middle;
        }
        .client-table tbody tr:hover {
            background-color: #f1f1f1;
            transition: background-color 0.3s ease;
        }
        .client-table td i {
            color: #007bff;
            margin-right: 5px;
        }
        .table-title {
            font-weight: 600;
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

        <!-- Clients Table Section -->
        <div class="container mt-5">
            <div class="section-header mb-4 text-center">
                <h2><i class="fas fa-users"></i> All Clients</h2>
            </div>

            <%
                List<Client> clients = (List<Client>) session.getAttribute("clients");
                if (clients != null && !clients.isEmpty()) {
                    int index = 1;
            %>
            <div class="table-responsive">
                <table class="table table-bordered table-striped client-table">
                    <thead class="thead-dark text-center">
                        <tr>
                            <th>#</th>
                            <th><i class="fas fa-user"></i> Name</th>
                            <th><i class="fas fa-envelope"></i> Email</th>
                            <th><i class="fas fa-phone"></i> Phone</th>
                            <th><i class="fas fa-id-badge"></i> Booking ID</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Client client : clients) {
                        %>
                        <tr>
                            <td class="text-center"><%= index++ %></td>
                            <td><i class="fas fa-user"></i><%= client.getName() %></td>
                            <td><i class="fas fa-envelope"></i><%= client.getEmail() %></td>
                            <td><i class="fas fa-phone"></i><%= client.getPhone() %></td>
                            <td><i class="fas fa-id-badge"></i><%= client.getBooking() %></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
            <%
                } else {
            %>
            <div class="alert alert-warning text-center">No clients found.</div>
            <%
                }
            %>
        </div>

        <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
