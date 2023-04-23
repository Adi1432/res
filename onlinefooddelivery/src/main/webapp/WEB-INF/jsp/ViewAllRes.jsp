<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Restaurants</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

th {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>

<table>
		<thead>
			<tr>
				<th>ResId</th>
				<th>ResName</th>
				<th>Rating</th>
				<th>Location</th>
				<th>Contact</th>
			</tr>
		</thead>
		<tbody>
			<%@ page import="com.techm.model.Restaurant"%>
			<%@ page import="java.util.List"%>
			<%
			List<Restaurant> list = (List<Restaurant>) request.getAttribute("list");
			if (list != null && !list.isEmpty()) {
				for ( Restaurant rec : list) {
			%>
			<tr>
				<th scope="row"><%=rec.getId()%></th>
				<td><%=rec.getResName()%></td>
				<td><%=rec.getRating()%></td>
				<td><%=rec.getLocation()%></td>
				<td><%=rec.getContact()%></td>
				<td>
					<form action="/showresupdateform" method="post">
						<input type="hidden" name="t7" value=<%=rec.getId()%>>
						<input type="submit" value="edit">
					</form>
					<form action="/deleteres" method="post">
						<input type="hidden" name="t8" value=<%=rec.getId()%>>
						<input type="submit" value="delete">
					</form>
				
				</td>
				
			</tr>
			<%
			}
			} else {
			%>
			<p>No Restaurant found.</p>
			<%
			}
			%>
		</tbody>
		
		

	</table>
	
	<a href="/showaddResform">Add Restaurant</a>


</body>
</html>
