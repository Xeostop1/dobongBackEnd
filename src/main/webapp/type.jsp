<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String a = (String)request.getAttribute("placename");
			
		%>	
		<a href="#"><%=a %></a>
	</body>
</html>