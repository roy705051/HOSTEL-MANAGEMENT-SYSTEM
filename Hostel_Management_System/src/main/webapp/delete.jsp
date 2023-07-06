<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
<%
String sic= (String)session.getAttribute("sic");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
String qry ="delete from  student where sic='"+sic+"'";


Statement smt = con.createStatement();
int i = smt.executeUpdate(qry);
if(i>0){
	response.sendRedirect("admindashboard.jsp"); 
} 
else{
	out.println("sic is wrong");
}
%>
</body>
</html>