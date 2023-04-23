<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>

<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

th, td {
  padding: 10px;
}

th {
  background-color: #ddd;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

a {
  display: inline-block;
  margin-top: 10px;
  padding: 10px;
  background-color: #4CAF50;
  color: white;
  text-decoration: none;
}

a:hover {
  background-color: #3e8e41;
}

</style>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>UserId</th>
				<th>userName</th>
				<th>Email</th>
				<th>Contact</th>
			</tr>
		</thead>
		<tbody>
			<%@ page import="com.techm.model.User"%>
			<%@ page import="java.util.List"%>
			<%
			List<User> list = (List<User>) request.getAttribute("list");
			if (list != null && !list.isEmpty()) {
				for ( User rec : list) {
			%>
			<tr>
				<th scope="row"><%=rec.getId()%></th>
				<td><%=rec.getUserName()%></td>
				<td><%=rec.getEmail()%></td>
				<td><%=rec.getContact()%></td>
				<td>
					<form action="/updateshowuserform" method="post">
						<input type="hidden" name="t7" value=<%=rec.getId()%>> <input
							type="submit" value="edit">
					</form>
					<form action="/deleteUser" method="post">
						<input type="hidden" name="t8" value=<%=rec.getId()%>> <input
							type="submit" value="delete">
					</form>

				</td>
			</tr>
			<%
			}
			} else {
			%>
			<p>No User found.</p>
			<%
			}
			%>
		</tbody>

	</table>

	<a href="/showadduserform">Add User</a>

</body>
</html>