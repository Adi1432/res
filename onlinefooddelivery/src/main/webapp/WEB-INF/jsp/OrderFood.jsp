<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Food details</title>
<style>
  form {
    display: flex;
    flex-direction: column;
    max-width: 300px;
    margin: 0 auto;
  }
  
  input[type=text], input[type=password] {
    margin-bottom: 10px;
    padding: 10px;
    border: none;
    border-radius: 5px;
    box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
  }
  
  input[type=submit] {
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #4CAF50;
    color: white;
    font-size: 16px;
    cursor: pointer;
  }
  
  input[type=submit]:hover {
    background-color: #3e8e41;
  }
</style>

</head>
<body>
	<%@ page import="com.techm.model.Food"%>
	<%@ page import="java.util.List"%>
	<%
	Food list = (Food) request.getAttribute("list");
	%>

	<form action="/OrderFood" method="post">
		<input type="hidden" name="id" value=<%=list.getId()%> /> 
		<input
			type="text" name="userName" placeholder="userName"><br>
		<input type="text" name="food" placeholder="foodName"
			value=<%=list.getFoodName()%> readonly="readonly"><br> <input type="text" 
			name="price" placeholder="price" value=<%=list.getPrice()%> readonly="readonly"><br>
		<input type="text" name="quan" placeholder="Quantity"><br>
		<input type="hidden" name="total" value="0">
		<input type="submit" value="OrderFood">
	</form>


</body>
</html>