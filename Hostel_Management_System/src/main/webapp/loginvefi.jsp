<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String sicn =request.getParameter("sic");
String password=request.getParameter("pass");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
	String qry = "select * from student where sic='"+sicn+"'";
	Statement smt = con.createStatement();
    ResultSet rs = smt.executeQuery(qry);
	while(rs.next()){
		String canteen=rs.getString("canteen");
		String fname =rs.getString("fname");
		String pass = rs.getString("pass");
		String lname = rs.getString("lname");
	if(password.equals(pass)){
		session.setAttribute("fname",fname);
		session.setAttribute("lname",lname);
		session.setAttribute("sic",sicn);
		session.setAttribute("canteen",canteen);
		response.sendRedirect("dashboard.jsp"); 
	} 
	else {
		response.sendRedirect("failed.html");
	} }
	rs.close();
	smt.close();
	con.close();}catch(Exception e){
		out.println("failed try again!!");
	 response.sendRedirect("index.html");
}

%>

</body>
</html>