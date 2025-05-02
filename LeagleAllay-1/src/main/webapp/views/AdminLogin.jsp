<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login | Kanun</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="/views/css/style.css" rel="stylesheet">
</head>
<body>

    <%-- Include header.jsp if needed --%>
    <%@ include file="header.jsp" %>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 bg-light p-5 shadow rounded">
                <h3 class="text-center mb-4">Admin Login</h3>
                <form id="adminLoginForm" action="/admin/loginTask" method="post" onsubmit="return validateAdminForm();">
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" id="adminEmail" class="form-control" required autocomplete="off"/>
                        <small id="adminEmailError" class="text-danger"></small>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" id="adminPassword" class="form-control" required autocomplete="off"/>
                        <small id="adminPasswordError" class="text-danger"></small>
                    </div>
                    <button type="submit" class="btn btn-dark btn-block">Login</button>
                </form>
            </div>
        </div>
    </div>

    <!-- JS Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

    <!-- JS Validation Script -->
    <script>
        function validateAdminForm() {
            let isValid = true;

            // Reset errors
            document.getElementById("adminEmailError").innerText = "";
            document.getElementById("adminPasswordError").innerText = "";

            const password = document.getElementById("adminPassword").value;

            // Email validation
            

            // Password validation
            if (password === "") {
                document.getElementById("adminPasswordError").innerText = "Password is required.";
                isValid = false;
            } else if (password.length < 6) {
                document.getElementById("adminPasswordError").innerText = "Password must be at least 6 characters.";
                isValid = false;
            }

            return isValid;
        }
    </script>
</body>
</html>
