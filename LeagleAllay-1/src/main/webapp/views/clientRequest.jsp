<%@page import="com.example.demo.Entities.ClientRequests"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Client Requests</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
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
			List<ClientRequests> bookings = (List<ClientRequests>) session.getAttribute("allBookings");
			if (bookings != null && !bookings.isEmpty()) {
				Collections.reverse(bookings); // show latest first
				Set<Long> shownClientIds = new HashSet<>();
				int index = 1;
			%>
			<table class="table table-bordered table-hover table-striped">
				<thead class="thead-dark">
					<tr>
						<th>#</th>
						<th>Client Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Count</th>
						<th>Last Booking Time</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (ClientRequests b : bookings) {
						long clientId = b.getClient().getId();

						if (!shownClientIds.contains(clientId)) {
							shownClientIds.add(clientId);

							int count = 0;
							String lastBookingTime = "";
							for (ClientRequests br : bookings) {
								if (br.getClient().getId() == clientId) {
									count++;
									lastBookingTime = br.getBookingTime().toString();
								}
							}
					%>
					<tr id="row-<%=b.getId()%>">
						<td><%=index++%></td>
						<td><%=b.getClient().getName()%></td>
						<td><%=b.getClient().getEmail()%></td>
						<td><%=b.getClient().getPhone()%></td>
						<td><%=count%></td>
						<td><%=lastBookingTime%></td>
						<td>
							<button class="btn btn-sm btn-success accept-btn" data-id="<%=b.getId()%>">Accept</button>
							<button class="btn btn-sm btn-danger cancel-btn" data-id="<%=b.getId()%>">Cancel</button>
						</td>
					</tr>
					<%
						}
					}
					%>
				</tbody>
			</table>
			<%
			} else {
			%>
			<div class="alert alert-warning" role="alert">No booking requests found.</div>
			<%
			}
			%>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

	<script>
		$(document).ready(function () {
			$(".accept-btn").click(function () {
				var id = $(this).data("id");
				var row = $("#row-" + id);
				row.addClass("accepted");
				row.find(".accept-btn").text("Accepted").prop("disabled", true);
				row.find(".cancel-btn").hide();
			});

			$(".cancel-btn").click(function () {
				var id = $(this).data("id");
				var row = $("#row-" + id);
				if (confirm("Are you sure you want to cancel this booking?")) {
					row.remove();
				}
			});
		});
	</script>
</body>
</html>
