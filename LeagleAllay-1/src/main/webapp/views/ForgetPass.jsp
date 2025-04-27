<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%
String attempted = request.getParameter("attempted");
boolean showError = false;

if (attempted != null) {
	showError = true;
}
%>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<!-- CSS -->
<link href="/views/css/style.css" rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="wrapper">

		<div class="page-header">
			<div class="container">
				<h2>Forget Password</h2>
			</div>
		</div>

		<div class="contact">
			<div class="container">

				<!-- Back Button -->
				<div>
					<a href="/user/login"><button type="button"
							class="btn btn-dark">Back</button></a> <br>
					<br>
				</div>

				<!-- Attempted true error message -->
				<%
				if (showError) {
				%>
				<div class="alert alert-dark text-center" role="alert">
					Reset Password Failed ,incorrect email</div>
				<%
				}
				%>

				<!-- Forget Password Form -->
				<div class="contact-form">
					<form action="/user/forgetPassword?attempted=true" method="post"
						onsubmit="return validateForgetPasswordForm();">
						<div class="form-group">
							<input type="email" name="email" id="email" class="form-control"
								placeholder="Enter your registered Email" required /> <small
								id="emailError" class="text-danger"></small>
						</div>
						<div class="form-group">
							<input type="password" name="password" id="newPassword"
								class="form-control" placeholder="Enter New Password" required />
							<small id="newPasswordError" class="text-danger"></small>
						</div>
						<div class="form-group">
							<input type="password" name="cfPassword" id="confirmPassword"
								class="form-control" placeholder="Confirm New Password" required />
							<small id="confirmPasswordError" class="text-danger"></small>
						</div>
						<div>
							<button class="btn btn-dark" type="submit">Reset
								Password</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<!-- JavaScript Validation -->
	<script>
    function validateForgetPasswordForm() {
        let isValid = true;

        // Clear all error messages
        ["emailError", "newPasswordError", "confirmPasswordError"].forEach(id => {
            document.getElementById(id).innerText = "";
        });

        // Input values
        const email = document.getElementById("email").value.trim();
        const newPassword = document.getElementById("newPassword").value.trim();
        const confirmPassword = document.getElementById("confirmPassword").value.trim();

        // Email validation
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            document.getElementById("emailError").innerText = "Invalid email format.";
            isValid = false;
        }

        // New password validation
        const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{6,}$/;
        if (!passwordRegex.test(newPassword)) {
            document.getElementById("newPasswordError").innerText = "Password must be at least 6 characters, including uppercase, lowercase, number, and special character.";
            isValid = false;
        }

        // Confirm password match validation
        if (newPassword !== confirmPassword) {
            document.getElementById("confirmPasswordError").innerText = "New Password and Confirm Password do not match.";
            isValid = false;
        }

        return isValid;
    }
</script>

</body>
</html>
