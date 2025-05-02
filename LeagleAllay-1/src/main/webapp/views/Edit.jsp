<%@page import="com.example.demo.Entities.Client"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Client client = (Client) session.getAttribute("client"); // assuming client object is passed to this page
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Edit Client Profile</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    
    <!-- CSS -->
    <link href="/views/css/style.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <jsp:include page="header.jsp"></jsp:include>

    <div class="page-header">
        <div class="container">
            <h2>Edit Client Profile</h2>
        </div>
    </div>

    <div class="contact">
        <div class="container">
            <div class="contact-form">
                <form action="/user/updateClient" method="post" onsubmit="return validateEditForm();">
                    <!-- ID (read-only) -->
                    <div class="form-group">
                        <input type="text" name="id" id="id" class="form-control" value="<%= client.getId() %>" readonly />
                    </div>

                    <!-- Name -->
                    <div class="form-group">
                        <input type="text" name="name" id="name" class="form-control" value="<%= client.getName() %>" required />
                        <small id="nameError" class="text-danger"></small>
                    </div>

                    <!-- Email -->
                    <div class="form-group">
                        <input type="email" name="email" id="email" class="form-control" value="<%= client.getEmail() %>" required />
                        <small id="emailError" class="text-danger"></small>
                    </div>

                    <!-- Phone -->
                    <div class="form-group">
                        <input type="text" name="phone" id="phone" class="form-control" value="<%= client.getPhone() %>" required />
                        <small id="phoneError" class="text-danger"></small>
                    </div>

                    <!-- Submit -->
                    <div>
                        <button class="btn btn-dark" type="submit">Update Profile</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</div>

<!-- JavaScript Validation -->
<script>
    function validateEditForm() {
        let isValid = true;

        document.getElementById("nameError").innerText = "";
        document.getElementById("emailError").innerText = "";
        document.getElementById("phoneError").innerText = "";

        const name = document.getElementById("name").value.trim();
        const email = document.getElementById("email").value.trim();
        const phone = document.getElementById("phone").value.trim();

        const nameRegex = /^(?=.*[a-z])(?=.*[A-Z])[A-Za-z\s]{2,}$/;
        if (!nameRegex.test(name)) {
            document.getElementById("nameError").innerText = "Name must have uppercase and lowercase letters.";
            isValid = false;
        }

        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            document.getElementById("emailError").innerText = "Invalid email format.";
            isValid = false;
        }

        const phoneRegex = /^[1-9][0-9]{9}$/;
        const sameDigit = /^(\d)\1{9}$/;
        if (!phoneRegex.test(phone)) {
            document.getElementById("phoneError").innerText = "Phone must be 10 digits and not start with 0.";
            isValid = false;
        } else if (sameDigit.test(phone)) {
            document.getElementById("phoneError").innerText = "Phone number cannot be all same digits.";
            isValid = false;
        }

        return isValid;
    }
</script>
</body>
</html>
