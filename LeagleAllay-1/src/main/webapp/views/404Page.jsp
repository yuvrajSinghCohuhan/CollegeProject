<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String email1 = (String) session.getAttribute("email");
    if (email1 == null) {
        response.sendRedirect("/admin/login");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Service Unavailable</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="/views/css/style.css" rel="stylesheet">
    <style>
        .service-box {
            margin-top: 80px;
            text-align: center;
            padding: 50px;
            border-radius: 15px;
            background-color: #f8f9fa;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }
        .service-box h1 {
            font-size: 48px;
            color: #dc3545;
        }
        .service-box p {
            font-size: 20px;
            margin: 20px 0;
        }
        .btn-back {
            font-size: 16px;
        }
    </style>
</head>
<body>

    <!-- Include top bar and navbar if desired -->
    <div class="container">
        <div class="service-box">
            <h1>🚧 Service Not Available</h1>
            <p>The requested service is currently under development or temporarily unavailable.</p>
            <a href="/admin/dashboard" class="btn btn-primary btn-back">Return to Dashboard</a>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
