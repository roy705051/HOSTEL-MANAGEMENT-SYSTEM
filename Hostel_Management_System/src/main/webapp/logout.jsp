<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% session.setAttribute("sic",null);
session.setAttribute("username",null);
session.setAttribute("fname",null);
session.setAttribute("lname",null);
response.sendRedirect("index.html");
%>
</body>
</html>