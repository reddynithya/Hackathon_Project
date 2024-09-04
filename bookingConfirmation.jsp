<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Confirmation</title>
    <style>
    /* confirmation-style.css */

body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  margin: 0;
  padding: 0;
  background-color: #f7f7f7;
}

h1 {
  text-align: center;
  margin-bottom: 20px;
}

.confirmation-container {
  max-width: 400px;
  margin: 0 auto;
  background-color: #fff;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.confirmation-container p {
  margin-bottom: 10px;
}

.confirmation-container strong {
  color: #0069d9;
}

/* Style the back to homepage link */
.back-to-home {
  display: block;
  text-align: center;
  margin-top: 20px;
}

.back-to-home a {
  color: #0069d9;
  text-decoration: none;
}

.back-to-home a:hover {
  text-decoration: underline;
}
    
    </style>
</head>
<body>
    <h1>Booking Confirmation</h1>
    <p>Thank you, <strong><%= request.getParameter("name") %></strong>, for your booking.</p>
    <p>We have sent a confirmation email to <strong><%= request.getParameter("email") %></strong>.</p>
    <p>We will contact you at <strong><%= request.getParameter("phone") %></strong> if needed.</p>
    <p>Date of booking: <strong><%= request.getParameter("date") %></strong></p>
    <p>Number of people: <strong><%= request.getParameter("numOfPeople") %></strong></p>
    <div class="back-to-home">
        <a href="http://localhost:8080/main.html">Back to Homepage</a>
    </div>
</body>
</html>
