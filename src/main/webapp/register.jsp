<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Form</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <form action="/RegisterServlet" method="post">
        <div class="form-group">
            <label for="exampleInputUsername">Username</label>
            <input type="text" class="form-control" id="exampleInputUsername" name="username" placeholder="Username">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
        </div>
        <div class="form-group">
            <label for="exampleInputPhone1">Phone</label>
            <input type="number" class="form-control" id="exampleInputPhone1" name="phone" placeholder="Phone">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="customRadioInline1" name="gender" value="MALE" class="custom-control-input">
                <label class="custom-control-label" for="customRadioInline1">male</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="customRadioInline2" name="gender" value="FEMALE" class="custom-control-input">
                <label class="custom-control-label" for="customRadioInline2">female</label>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
