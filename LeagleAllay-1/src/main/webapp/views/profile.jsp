<%@ page import="com.example.demo.Entities.Client" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Client c = (Client) session.getAttribute("client");
if(c==null){
	response.sendRedirect("/user/dashboard");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile | Kanun</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="/views/css/style.css" rel="stylesheet">
    <style>
        .profile-card {
            background: #ffffff;
            border-radius: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }
        .profile-icon {
            font-size: 60px;
            color: #343a40;
        }
        .info-label {
            font-weight: bold;
            color: #555;
        }
        .info-value {
            font-size: 18px;
            color: #333;
        }
        .logout-btn {
            padding: 10px 30px;
            border-radius: 30px;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <%@ include file="header.jsp" %>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8 profile-card p-5 text-center">
                <i class="fas fa-user-circle profile-icon mb-3"></i>
                <h3 class="mb-4">Welcome, <%
                    out.print(c != null ? c.getName() : "Guest");
                %>!</h3>

                <div class="row text-left">
                    <div class="col-md-6 mb-4 ml-1">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-id-badge fa-lg mr-3 text-secondary"></i>
                            <div>
                                <div class="info-label">User ID</div>
                                <div class="info-value"><%= c.getId() %></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 ml-1">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-user fa-lg mr-3 text-secondary"></i>
                            <div>
                                <div class="info-label">Name</div>
                                <div class="info-value"><%= c.getName() %></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 ml-1">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-envelope fa-lg mr-3 text-secondary"></i>
                            <div>
                                <div class="info-label">Email</div>
                                <div class="info-value"><%= c.getEmail() %></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 ml-1">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-phone fa-lg mr-3 text-secondary"></i>
                            <div>
                                <div class="info-label">Phone</div>
                                <div class="info-value"><%= c.getPhone() %></div>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="/user/changepass" class="btn btn-info logout-btn mt-3">
                    <i class="fas fa-sign-out-alt"></i> Change Password
                </a>
                <a href="/user/logout" class="btn btn-dark logout-btn mt-3">
                    <i class="fas fa-sign-out-alt"></i> Logout
                </a>
                <a href="/user/edit" class="btn btn-warning logout-btn mt-3">
                    <i class="fas fa-sign-out-alt"></i> Edit
                </a>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <!-- JS Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
