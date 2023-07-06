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
String fname= request.getParameter("fname");
String lname= request.getParameter("lname");
String year= request.getParameter("years");
String sic= request.getParameter("sic");
long  mob= Long.parseLong(request.getParameter("pno"));
String email= request.getParameter("email");
String gender = request.getParameter("gender");
String father=request.getParameter("father");
String mother=request.getParameter("mother");
String city= request.getParameter("city");
String state= request.getParameter("state");
int pin= Integer.parseInt(request.getParameter("pin"));
String roomtype= request.getParameter("roomtype");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
	String qry = "update student set fname='"+fname+"',lname='"+lname+"',phone="+mob+",email='"+email+"',father='"+father+"',mother='"+mother+"',city='"+city+"',state='"+state+"',pin="+pin+" where sic='"+sic+"'";
	session.setAttribute("sic",sic);
	session.setAttribute("fname",fname);
	session.setAttribute("lname",lname);
	Statement smt = con.createStatement();
	int i = smt.executeUpdate(qry);
	if(i>=0){
		response.sendRedirect("dashboard.jsp"); 
	} 
	else {
		response.sendRedirect("dashboard.jsp"); 
	}}catch(Exception e){
		out.println("failed try again!!"+e);

}
%>
</body>
</html>