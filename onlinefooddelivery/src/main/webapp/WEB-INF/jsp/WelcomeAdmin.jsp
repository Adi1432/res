<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f2f2f2;
    }
    h1 {
        text-align: center;
        padding: 20px 0;
    }
    .link {
        display: inline-block;
        padding: 10px 20px;
        margin: 10px;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
    .link:hover {
        background-color: #3e8e41;
    }
</style>
</head>
<body>

<h1>welcome Admin</h1>

<a href="/showaddResform" class="link">Add Restaurant</a>
<a href="/viewAllRes" class="link">View Restaurants</a>

<a href="/showadduserform" class="link">Add User</a>
<a href="/viewUsers" class="link">View Users</a>

</body>
</html>
