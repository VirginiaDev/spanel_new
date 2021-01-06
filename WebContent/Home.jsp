<%
String msg = (String)session.getAttribute("message");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">
			.topMenu {
				background: #f5c0c0;
				position: absolute;
				z-index: 9999;
				top: 15px;
				left: 0;
				width: 100%;
			}

		.topMenu li {
			list-style: none;
			padding: 10px;
			display: inline-block;
		}

		a {
			text-decoration: none;
			color: black;
		}
	</style>
<script type="text/javascript">
<%if(msg!=null){%>
	alert("<%=msg%>")
	<%session.invalidate();
}%>
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	</head>
	<body>
		<input type = "hidden" name = "userAction">
			<ul class="col-md-12 topMenu">
				<li><a href="UserController?userAction=1">Add User</a> </li>
				<li><a href="UserController?userAction=3">User List</a></li>
				<li><a href="UserController?userAction=4">Logout</a> </li>
			</ul>
	</body>
</html>