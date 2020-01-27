<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<div class="panel-body">
    <a href="/" class="btn-lg btn-primary pull-left">Back Home Page</a>
<br><br>
<h3>Add new User</h3>

<form:form method="post" modelAttribute="user">

    <form:hidden path="id"/><br><br>
    Name:
    <form:input path="name" class="form-control" required="name"/><br>
    E-mail :
    <form:input path="email" class="form-control" required="email"/><br>
    Address :
    <form:input path="address" class="form-control" required="address"/><br>
    Mobile no :
    <form:input path="mobileNo" class="form-control" required="mobileNo"/><br>
    <form:button type="submit" class="form-control btn btn-success btn-block" >Save</form:button>

</form:form>
</div>
</div>
</body>
</html>