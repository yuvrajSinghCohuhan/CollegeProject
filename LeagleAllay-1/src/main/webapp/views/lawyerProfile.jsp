<%@page import="com.example.demo.Entities.Client"%>
<%@page import="com.example.demo.Entities.Lawyer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
Client client = (Client) session.getAttribute("client");
Lawyer l = (Lawyer) session.getAttribute("lawyer");
boolean showSuccess = client != null && request.getParameter("attempted") != null;

String imagePath = "/views/img/default-profile.jpg"; // default
if (l != null) {
	if (l.getId() == 2) {
		imagePath = "/views/img/team-1.jpg";
	} else if (l.getId() == 3) {
		imagePath = "/views/img/team-2.jpg";
	} else if (l.getId() == 4) {
		imagePath = "/views/img/team-3.jpg";
	} else if (l.getId() == 5) {
		imagePath = "/views/img/team-4.jpg";
	}
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Lawyer Profile</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="/views/css/style.css" rel="stylesheet">
<style>
.profile-image {
	width: 200px;
	height: 200px;
	object-fit: cover;
	border-radius: 50%;
	border: 4px solid #007bff;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<%
		if (showSuccess) {
		%>
		<div class="alert alert-success text-center" role="alert">
			Request Sent Successfully!</div>
		<%
		}
		%>

		<div class="row justify-content-center">
			<div class="col-md-8 bg-light p-5 shadow rounded">
				<h2 class="text-center text-primary mb-4">Welcome, Lawyer!</h2>

				<!-- Profile Image -->
				<div class="text-center mb-4">
					<img src="<%=imagePath%>" alt="Profile Image"
						class="profile-image">
				</div>

				<!-- Profile Details -->
				<div class="row">
					<div class="col-md-6 mb-3">
						<label><strong>Name:</strong></label>
						<p><%=l.getName()%></p>
					</div>
					<div class="col-md-6 mb-3">
						<label><strong>Email:</strong></label>
						<p><%=l.getEmail()%></p>
					</div>
					<div class="col-md-6 mb-3">
						<label><strong>Phone:</strong></label>
						<p><%=l.getPhone()%></p>
					</div>
					<div class="col-md-6 mb-3">
						<label><strong>Specialization:</strong></label>
						<p><%=l.getSpecialization()%></p>
					</div>
				</div>

				<%
				if (client != null) {
				%>
				<form action="sendReq" method="post" class="text-center mt-4">
					<input type="hidden" name="attempted" value="true" />
					<button type="submit" class="btn btn-dark">Send Request</button>
				</form>

				<%
				}
				%>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
