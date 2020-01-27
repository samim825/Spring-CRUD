<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="panel-body">
        <a href="/addUser" class="btn-lg btn-primary pull-right">Add new User</a>

<%--<a href="/userList">Add new User</a>--%>
<br><br>

<h3>User List</h3>
<table class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>ID No</th>
        <th>Name</th>
        <th>E-mail</th>
        <th>Address</th>
        <th>Mobile No</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
<c:forEach items="${userList}" var="user">
    <tr>
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.email}</td>
        <td>${user.address}</td>
        <td>${user.mobileNo}</td>
        <td><a href="/addUser?userId=${user.id}">Edit</a></td>
        <td><a href="/deleteStudent?userId=${user.id}">Delete</a></td>
    </tr>
</c:forEach>
    </tbody>
</table>
</div>
</div>
</body>
</html>