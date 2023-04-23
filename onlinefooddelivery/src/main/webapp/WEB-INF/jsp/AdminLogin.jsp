<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin</title>
<style>
  /* Define CSS rules here */
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
  }
  input[type="text"], input[type="password"] {
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
  }
  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
  }
  input[type="submit"]:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<form action="/adminLogin" method="post">
<input type="text" name="userName" placeholder="User Name"><br>
<input type="password" name="password" placeholder="Password"><br>
<input type="submit"  value="Login">
</form>
</body>
</html>
