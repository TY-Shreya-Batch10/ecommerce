<%@page import="java.util.List"%>
<%@ page import="ecommerce1.beans.Item" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% String message = (String) request.getAttribute("message"); %>
<% Item item = (Item) request.getAttribute("item"); %>
<% List<Item> list = (List<Item>)request.getAttribute("list"); %>

<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(message != null) { %>
	
		<h3> <%= message %> </h3>	
	
	<% } %>
	

	<fieldset>
		<legend>Search Item</legend>
		<form action="./searchAll" method="post">
			<table>
				
				<tr> Click search all to see all the items  </tr>
		
		
				<tr>
					<td><input type="submit" value="Search all"></td>
				</tr>
			</table>
		</form>
	</fieldset>
	
	

	
	<% if(item != null){ %>
		
		<h3>Id : <%= item.getId() %> </h3>
		<h3>Name : <%= item.getName()%> </h3>
		<h3>Quantity : <%= item.getQuantity()%> </h3>
		<h3>Price : <%= item.getPrice() %> $ </h3>
	
	<% } %>
	
	
	
	<%
		if (list != null) {
	%>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Quantity</th>
			<th>Price</th>
		</tr>
		<%
			for (Item items : list) {
		%>
		<tr>
			<td><%=items.getId()%></td>
			<td><%=items.getName()%></td>
			<td><%=items.getQuantity()%></td>
			<td><%=items.getPrice() %>
		</tr>

	<%
		}
	}
	%>
	
	</table>

</body>
</html>