<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Restaurant</title>
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
    </style>
</head>
<body>
    <form action="/UpdateRes" method="post">
        <input type="hidden" name="t7" value="${id}" />
        <input type="text" name="resName" placeholder="resName"><br>
        <input type="text" name="password" placeholder="password"><br>
        <input type="text" name="location" placeholder="location"><br>
        <input type="text" name="contact" placeholder="contact" value=""><br>
        <input type="text" name="rating" placeholder="rating"><br>
        <input type="submit" value="Update Restaurant">
    </form>
</body>
</html>
