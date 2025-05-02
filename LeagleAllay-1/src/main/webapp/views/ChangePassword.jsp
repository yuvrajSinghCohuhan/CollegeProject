<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%
    String attempted = request.getParameter("attempted");
    boolean showError = "true".equals(attempted);
%>
<head>
    <meta charset="UTF-8">
    <title>Change Password</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- CSS -->
    <link href="/views/css/style.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">

    <div class="page-header">
        <div class="container">
            <h2>Change Password</h2>
        </div>
    </div>

    <div class="contact">
        <div class="container">

            <!-- Back Button -->
            <div>
                <a href="/user/profile"><button type="button" class="btn btn-dark">Back</button></a><br><br>
            </div>

            <!-- Error Message -->
            <% if (showError) { %>
                <div class="alert alert-dark text-center" role="alert">
                    Change Password Failed, incorrect old password.
                </div>
            <% } %>

            <!-- Change Password Form -->
            <div class="contact-form">
                <form action="/user/changePassword?attempted=true" method="post" onsubmit="return validateChangePasswordForm();">
                    <div class="form-group">
                        <input type="password" name="oldPassword" id="oldPassword" class="form-control" placeholder="Enter Old Password" required />
                        <small id="oldPasswordError" class="text-danger"></small>
                    </div>
                    <div class="form-group">
                        <input type="password" name="newPassword" id="newPassword" class="form-control" placeholder="Enter New Password" required />
                        <small id="newPasswordError" class="text-danger"></small>
                    </div>
                    <div class="form-group">
                        <input type="password" name="cfPassword" id="confirmPassword" class="form-control" placeholder="Confirm New Password" required />
                        <small id="confirmPasswordError" class="text-danger"></small>
                    </div>
                    <div>
                        <button class="btn btn-dark" type="submit">Change Password</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</div>

<!-- JavaScript Validation -->
<script>
    function validateChangePasswordForm() {
        let isValid = true;

        // Clear error messages
        ["oldPasswordError", "newPasswordError", "confirmPasswordError"].forEach(id => {
            document.getElementById(id).innerText = "";
        });

        // Get values
        const oldPassword = document.getElementById("oldPassword").value.trim();
        const newPassword = document.getElementById("newPassword").value.trim();
        const confirmPassword = document.getElementById("confirmPassword").value.trim();

        // Password strength regex
        const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{6,}$/;

        // Validate old password presence
        if (oldPassword.length < 1) {
            document.getElementById("oldPasswordError").innerText = "Old password is required.";
            isValid = false;
        }

        // Validate new password
        if (!passwordRegex.test(newPassword)) {
            document.getElementById("newPasswordError").innerText = "Password must be at least 6 characters, include uppercase, lowercase, number, and special character.";
            isValid = false;
        }

        // Validate confirm password
        if (newPassword !== confirmPassword) {
            document.getElementById("confirmPasswordError").innerText = "Passwords do not match.";
            isValid = false;
        }

        return isValid;
    }
</script>

</body>
</html>
