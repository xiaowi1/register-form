<%@ page import="pl.sda.models.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer registered</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css">
</head>
<body>
<% Customer customer = (Customer) session.getAttribute("customer"); %>

<div class="container">
    <div class="card" style="width: 18rem;">
        <ul class="list-group list-group-flush">
            <li class="list-group-item"><strong>Username </strong><%= customer.getUsername()%></li>
            <li class="list-group-item"><strong>Email </strong><%= customer.getEmail()%></li>
            <li class="list-group-item"><strong>Gender </strong><%= customer.getGender().name()%></li>
            <li class="list-group-item"><strong>Phone </strong><%= customer.getPhone()%></li>
        </ul>
    </div>
</div>
</body>
</html>
