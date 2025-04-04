<!-- lawyer-register.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Lawyer Registration</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link href="/views/css/style.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">
    <jsp:include page="header.jsp"></jsp:include>
    <div class="page-header">
        <div class="container">
            <h2>Lawyer Registration</h2>
        </div>
    </div>
    <div class="contact">
        <div class="container">
            <div class="contact-form">
                <form action="/registerLawyer" method="post">
                    <div class="form-group">
                        <input type="text" name="name" class="form-control" placeholder="Your Name" required />
                    </div>
                    <div class="form-group">
                        <input type="text" name="specialization" class="form-control" placeholder="Specialization" required />
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" class="form-control" placeholder="Your Email" required />
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control" placeholder="Your Password" required />
                    </div>
                    <div class="form-group">
                        <input type="password" name="cpassword" class="form-control" placeholder="Confirm Your Password" required />
                    </div>
                    <div class="form-group">
                        <input type="text" name="phone" class="form-control" placeholder="Your Phone" required />
                    </div>
                    <div>
                        <button class="btn" type="submit">Register as Lawyer</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>