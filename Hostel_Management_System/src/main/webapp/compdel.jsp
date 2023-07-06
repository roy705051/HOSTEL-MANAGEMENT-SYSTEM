<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String sic= (String)session.getAttribute("sic");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
String qry ="update student set ROOM_COMP='',GENERAL_COMP='',SUGGS='' where sic='"+sic+"'";
Statement smt = con.createStatement();
int i=smt.executeUpdate(qry);
if(i>=0){
	response.sendRedirect("studcomp.jsp"); 
}
else{
	response.sendRedirect("admindashboard.jsp"); 
}
%>
</body>
</html>