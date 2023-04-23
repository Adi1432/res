<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
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

    input[type="text"] {
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
</style>
</head>
<body>
<form action="/updateUser" method="post">
<input type="hidden" name="id" value="${id}" />
<input type="text" name="userName" placeholder="User Name"><br>
<input type="text" name="email" placeholder="Email"><br>
<input type="text" name="contact" placeholder="Phone Number"><br>
<input type="submit"  value="Update">
</form>
</body>
</html>
