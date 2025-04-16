<%@page import="com.example.demo.Entities.ClientRequests"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Client Requests</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<!-- CSS Libraries -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="/views/css/style.css" rel="stylesheet">
<style>
    .accepted {
        background-color: #d4edda !important;
    }
</style>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="container mt-5">
			<div class="section-header">
				<h2>Client Booking Requests</h2>
			</div>

			<%
				List<ClientRequests> bookings = (List<ClientRequests>)session.getAttribute("allBookings");
				if (bookings != null && !bookings.isEmpty()) {
			%>
			<table class="table table-bordered table-hover table-striped">
				<thead class="thead-dark">
					<tr>
						<th>#</th>
						<th>Client Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Booking Time</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				<%
					for (ClientRequests b : bookings) {
				%>
					<tr id="row-<%= b.getId() %>">
						<td><%= b.getId() %></td>
						<td><%= b.getClient().getName() %></td>
						<td><%= b.getClient().getEmail() %></td>
						<td><%= b.getClient().getPhone() %></td>
						<td><%= b.getBookingTime() %></td>
						<td>
							<button class="btn btn-sm btn-success accept-btn" data-id="<%= b.getId() %>">Accept</button>
							<button class="btn btn-sm btn-danger cancel-btn" data-id="<%= b.getId() %>">Cancel</button>
						</td>
					</tr>
				<%
					}
				%>
				</tbody>
			</table>
			<%
				} else {
			%>
			<div class="alert alert-warning" role="alert">
				No booking requests found.
			</div>
			<%
				}
			%>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<!-- JavaScript -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

	<script>
		$(document).ready(function () {
			// Accept button logic
			$(".accept-btn").click(function () {
				var id = $(this).data("id");
				var row = $("#row-" + id);

				// Change row color
				row.addClass("accepted");

				// Disable both buttons
				row.find(".accept-btn").text("Accepted").prop("disabled", true);
				row.find(".cancel-btn").hide();

				// Optional: send request to backend
				// window.location.href = "/user/viewBooking?id=" + id;
			});

			// Cancel button logic
			$(".cancel-btn").click(function () {
				var id = $(this).data("id");
				var row = $("#row-" + id);

				// Optional: Confirm before cancel
				if (confirm("Are you sure you want to cancel this booking?")) {
					// Remove row visually
					row.remove();

					// Optional: redirect to backend to actually cancel
					// window.location.href = "/user/deleteBooking?id=" + id;
				}
			});
		});
	</script>
</body>
</html>