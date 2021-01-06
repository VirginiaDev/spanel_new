<%@page import="user.User"%>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<User> userList = (ArrayList<User>)request.getAttribute("userList");
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<th>ID</th>
	<th>Name</th>
	<th>Email</th>
	<th>Mobile</th>
	<th>Action</th>
	<%if(userList.size()>0){
		for(int i=0; i<userList.size(); i++){
			User user = userList.get(i);%>
			<tr>
				<td><%=user.getId() %></td>  
				<td><%=user.getName()%></td>  
				<td><%=user.getEmail()%></td>  
				<td><%=user.getMobile() %></td>  
				<td><a href="UserController?userAction=5&id=<%=user.getId()%>">Edit</a></td>
			</tr>
		<%}
	}
	%>

</table>
<a href="Home.jsp">Go Back</a>
</body>
</html>