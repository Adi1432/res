<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restuarant Login</title>
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
  color: #4CAF50;
  text-decoration: none;
}
</style>
</head>
<body>
<form action="/LoginRes" method="post">
<input type="text" name="resName" placeholder="resName"><br>
<input type="password" name="password" placeholder="password"><br>
<input type="submit"  value="Login">
</form>

<a href="/RegisterResForm">Register</a>
</body>
</html>
