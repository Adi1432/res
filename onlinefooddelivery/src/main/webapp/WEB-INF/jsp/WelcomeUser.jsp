<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome user</title>
<style>
  body {
    font-family: Arial, sans-serif;
  }
  form {
    margin: 10px 0;
  }
  form input[type="text"], form input[type="submit"] {
    padding: 5px;
    font-size: 16px;
    border-radius: 5px;
    border: none;
  }
  form input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    cursor: pointer;
    margin-left: 10px;
  }
  a {
    display: inline-block;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    text-decoration: none;
    border-radius: 5px;
  }
  a:hover {
    background-color: #3e8e41;
  }
</style>
</head>
<body>



<form action="/searchFood" method="post">
<input type="text" name="cat" placeholder="enter category"/>
<input type="submit" value="search"/>
</form>

<form action="/showUpdateUserForm" method="post">
<input type="hidden" name="id" value="${id}" />
<input type="submit" value="update profile"/>
</form>

<a href="/orderFood">order Food</a>


</body>
</html>
