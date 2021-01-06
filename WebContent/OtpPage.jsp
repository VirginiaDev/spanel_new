<%String message = (String)session.getAttribute("message"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.button{
margin-top: 10px;
height: 30px;
width: 111px;
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
	
<a href="ComposeSMS.jsp">Compose SMS</a>
</form>
<script type="text/javascript">
<%if(message!=null){%>
	alert("<%=message%>");
<%session.removeAttribute("message");}%>
function submitForm(){
	if(document.uForm.otp.value == ""){
		alert("Please Enter Otp");
		return;
	}
	document.uForm.userAction.value = 8;
	document.uForm.submit();
}
</script>
</body>
</html>