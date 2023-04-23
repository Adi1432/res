<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Items</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

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
				<th>FoodId</th>
				<th>Res</th>
				<th>Food</th>
				<th>Category</th>
				<th>Description</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<%@ page import="com.techm.model.Food"%>
			<%@ page import="java.util.List"%>
			<%
			List<Food> list = (List<Food>) request.getAttribute("list");
			if (list != null && !list.isEmpty()) {
				for ( Food rec : list) {
			%>
			<tr>
				<th scope="row"><%=rec.getId()%></th>
				<td><%=rec.getResName()%></td>
				<td><%=rec.getFoodName()%></td>
				<td><%=rec.getCategory()%></td>
				<td><%=rec.getDescription()%></td>
				<td><%=rec.getPrice()%></td>
				<td>
					<form action="/showupdatefoodform" method="post">
						<input type="hidden" name="id" value=<%=rec.getId()%>> <input
							type="submit" value="edit">
					</form>
					<form action="/deleteFood" method="post">
						<input type="hidden" name="id" value=<%=rec.getId()%>> <input
							type="submit" value="delete">
					</form>

				</td>
			</tr>
			<%
			}
			} else {
			%>
			<p>No Food found.</p>
			<%
			}
			%>
		</tbody>

	</table>

	

</body>

</html>
