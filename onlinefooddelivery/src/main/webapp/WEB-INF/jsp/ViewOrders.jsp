<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>

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

tr:nth-child(even) {
  background-color: #f2f2f2;
}

</style>

</head>
<body>
<table>
		<thead>
			<tr>
				<th>orderId</th>
				<th>UserName</th>
				<th>Food</th>
				<th>price</th>
				<th>Quantity</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>
			<%@ page import="com.techm.model.Food"%>
			<%@ page import="com.techm.model.Orders"%>
			<%@ page import="java.util.List"%>
			<%
			List<Food> list = (List<Food>) request.getAttribute("list");
			if (list != null && !list.isEmpty()) {
				for ( Food re : list) {
					
					if(re.getOrders()!= null && !re.getOrders().isEmpty()){
					
					for(Orders rec :re.getOrders()){
			%>
			<tr>
				<th scope="row"><%=rec.getId()%></th>
				<td><%=rec.getUserName()%></td>
				<td><%=rec.getFood()%></td>
				<td><%=rec.getPrice()%></td>
				<td><%=rec.getQuan()%></td>
				<td><%=rec.getTotal()%></td>
				
			</tr>
			<%
			}
					}
				}
			} else {
			%>
			<p>No Orders found.</p>
			<%
			}
			%>
		</tbody>

	</table>
</body>
</html>
