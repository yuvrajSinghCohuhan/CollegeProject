<%@ page import="com.example.demo.Entities.Client" %>
<%@ page import="com.example.demo.Entities.Lawyer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lawyer Profile | Kanun</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="/views/css/style.css" rel="stylesheet">
    <style>
        .profile-card {
            background: #ffffff;
            border-radius: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }
        .profile-image {
            width: 160px;
            height: 160px;
            object-fit: cover;
            border-radius: 50%;
            border: 5px solid #007bff;
        }
        .info-label {
            font-weight: bold;
            color: #555;
        }
        .info-value {
            font-size: 18px;
            color: #333;
        }
        .icon {
            margin-right: 10px;
            color: #007bff;
        }
        .btn-request {
            padding: 10px 30px;
            border-radius: 30px;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <%@ include file="header.jsp" %>

    <div class="container mt-5">
        <%
            Client client = (Client) session.getAttribute("client");
            boolean showSuccess = client != null && request.getParameter("attempted") != null;
            if (showSuccess) {
        %>
            <div class="alert alert-success text-center" role="alert">
                Request Sent Successfully!
            </div>
        <%
            }
        %>

        <div class="row justify-content-center">
            <div class="col-md-8 profile-card p-5 text-center">
                <%
                    Lawyer l = (Lawyer) session.getAttribute("lawyer");
                %>

                <!-- Profile Image -->
                <div class="mb-4">
                    <img class="profile-image" src="data:image/png;base64,<%= java.util.Base64.getEncoder().encodeToString(l.getImage()) %>" alt="Profile Image">
                </div>

                <h3 class="text-primary mb-4">Welcome, <%= l.getName() %>!</h3>

                <div class="row text-left">
                    <div class="col-md-6 mb-4">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-user icon fa-lg"></i>
                            <div>
                                <div class="info-label">Name</div>
                                <div class="info-value"><%= l.getName() %></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-envelope icon fa-lg"></i>
                            <div>
                                <div class="info-label">Email</div>
                                <div class="info-value"><%= l.getEmail() %></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-phone icon fa-lg"></i>
                            <div>
                                <div class="info-label">Phone</div>
                                <div class="info-value"><%= l.getPhone() %></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-gavel icon fa-lg"></i>
                            <div>
                                <div class="info-label">Specialization</div>
                                <div class="info-value"><%= l.getSpecialization() %></div>
                            </div>
                        </div>
                    </div>
                </div>

                <%
                    if (client != null) {
                %>
                    <form action="sendReq" method="post" class="text-center mt-4">
                        <input type="hidden" name="attempted" value="true" />
                        <button type="submit" class="btn btn-dark btn-request">
                            <i class="fas fa-paper-plane"></i> Send Request
                        </button>
                    </form>
                <%
                    }
                %>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

</body>
</html>
