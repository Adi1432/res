<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
    <style>
        /* CSS styles go here */
        body {
            font-family: Arial, sans-serif;
        }
        form {
            margin: 20px auto;
            width: 50%;
            border: 2px solid #ccc;
            padding: 20px;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
        }
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action="/registerUser" method="post">
        <input type="text" name="userName" placeholder="User Name"><br>
        <input type="password" name="password" placeholder="Password"><br>
        <input type="text" name="email" placeholder="Email"><br>
        <input type="text" name="contact" placeholder="Phone Number"><br>
        <input type="submit"  value="Register">
    </form>
</body>
</html>
