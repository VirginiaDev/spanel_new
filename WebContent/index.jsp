<%String message = (String)session.getAttribute("errorMsg"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="margin: 10%">

<a href="Login.jsp?userType=admin" style="margin: 20%;WIDTH: 20%;height: 35px;background-color: #36c6d3;color: white;border: none;padding: 10px 50px;">Login as Admin</a>
<a href="Login.jsp?userType=user" style="margin-left: -150px;WIDTH: 20%;height: 35px;background-color: #36c6d3;color: white;border: none;padding: 10px 56px;">Login as User</a>
</div>
<script type="text/javascript">
<%
if(message!=null){%>
	alert("<%=message%>");
<%session.removeAttribute("errorMsg");}%>
</script>
</body>
</html>