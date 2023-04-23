<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserLogin</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }
    
    form {
        margin: 50px auto;
        width: 300px;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
    }
    
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        box-sizing: border-box;
        border: none;
        border-radius: 5px;
        background-color: #f2f2f2;
    }
    
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 10px;
        cursor: pointer;
    }
    
    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        color: #666;
        text-decoration: none;
    }
    
    a:hover {
        color: #000;
    }
</style>
</head>
<body>
<form action="/loginUser" method="post">
<input type="text" name="userName" placeholder="User Name"><br>
<input type="password" name="password" placeholder="Password"><br>
<input type="submit"  value="Login">
</form>

<a href="/showRegisterUserForm">Register user</a>
</body>
</html>
