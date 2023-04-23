<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
    /* CSS for the form elements */
    input[type=text], input[type=password] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    input[type=submit] {
      background-color: #4CAF50;
      color: white;
      padding: 12px 20px;
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

<form action="/RegisterRes" method="post">
<input type="text" name="resName" placeholder="resName"><br>
<input type="text" name="password" placeholder="password"><br>
<input type="text" name="location" placeholder="location"><br>
<input type="text" name="contact" placeholder="contact"><br>
<input type="text" name="rating" placeholder="rating"><br>
<input type="submit"  value="Add Restaurant">
</form>

</body>
</html>
