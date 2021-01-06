<%@page import="user.User"%>
<%
User user = (User)request.getAttribute("user");
%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.button{
margin-top: 10px;
height: 30px;
width: 70px;
}
.textField{
height: 20px;
margin-top: 10px;
}
form{
margin-top: 100px;
margin-left: 150px;
}</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="UserController" method="POST" name="userForm">
	<input type = "hidden" name = "userAction">
	<input type = "hidden" name = "id">
	<input type = "text" name = "name" placeholder = "Enter Name" class="textField"><br>
	<input type = "email" name = "email" placeholder = "Enter Email" class="textField"><br>
	<input type = "text" name = "mobile" placeholder="Enter Mobile" class="textField"><br>
	<input type = "button" value = "Update" onclick="updateUser()" class="button">
</form>
</body>
<script type="text/javascript">
<%if(user!=null){%>
document.userForm.userAction.value=6;
document.userForm.name.value="<%=user.getName()%>";
document.userForm.email.value="<%=user.getEmail()%>";
document.userForm.mobile.value="<%=user.getMobile()%>";
<%}%>
function updateUser(){
	document.userForm.id.value=<%=user.getId()%>;
	document.userForm.submit();
}
</script>
</html>