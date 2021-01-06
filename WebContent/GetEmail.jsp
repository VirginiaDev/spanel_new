<%
String message = (String)session.getAttribute("message");
%>

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
	Enter Registered Email<br>
	<input type = "hidden" name = "userAction">
	<input type = "email" name = "email" class="textField"><br>
	<input type = "button" value = "Submit" onclick = "submitForm()" class = "button">
</form>
<script type="text/javascript">
<%
if(message != null){%>
	alert("<%=message%>");
<% session.removeAttribute("message");}
%>
function submitForm(){
	if(document.uForm.email.value == ""){
		alert("Please Enter Email");
		return;
	}
	document.uForm.userAction.value = 7;
	document.uForm.submit();
	
	
}
</script>
</body>
</html>