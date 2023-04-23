<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome </title>
<style>
    /* CSS styles */
    body {
        background-color: #f0f0f0;
        font-family: Arial, sans-serif;
    }
    form {
        display: inline-block;
        margin-right: 10px;
    }
    input[type="submit"] {
        padding: 8px 16px;
        background-color: #4CAF50;
        border: none;
        color: #fff;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin-top: 10px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #3e8e41;
    }
</style>
</head>
<body>
<form action="/showAddFoodForm" method="post">
    <input type="hidden" name="id" value="${id}"/>
    <input type="submit" value="Add Food" />
</form>
<form action="/viewAllfoods" method="post">
    <input type="hidden" name="id" value="${id}"/>
    <input type="submit" value="View Foods" />
</form>

<form action="/showUpateRestuarantForm" method="post">
    <input type="hidden" name="id" value="${id}"/>
    <input type="submit" value="Update Restaurant" />
</form>

<form action="/orders" method="post">
    <input type="hidden" name="id" value="${id}"/>
    <input type="submit" value="View Orders" />
</form>
</body>
</html>
