<%@page import="user.User"%>
<%User user = (User)request.getAttribute("user"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<form action = "UserController" method = "POST" name = "uForm">
	<input type = "hidden" name = "userAction">
	<input type = "hidden" name = "id">
	<input type = "password" name = "password" placeholder="Enter Password" class="textField"><br>
	<input type = "password" name = "confirmPassword" placeholder="Confirm Password" class="textField"><br>
	<input type = "button" value = "Submit" onclick = "submitForm()" class = "button">
</form>
<script type="text/javascript">
function submitForm(){
	if(document.uForm.password.value == ""){
		alert("Please Enter Password");
		return;
	}
	if(document.uForm.confirmPassword.value == ""){
		alert("Please Enter Confirm Password");
		return;
	}
	if(document.uForm.password.value != document.uForm.confirmPassword.value){
		alert("Password and Confirm Password not Match");
		return;
	}
	<%if(user!=null){%>
		document.uForm.id.value=<%=user.getId()%>;
	<%}%>
	document.uForm.userAction.value = 9;
	document.uForm.submit();
}
</script>
</body>
</html>