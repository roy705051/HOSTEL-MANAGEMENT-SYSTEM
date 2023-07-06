<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
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
String pass=request.getParameter("password");
String canteen="NO";
String sport="NO";
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
	String qry = "INSERT INTO student(fname,lname,year,sic,phone,email,gender,father,mother,city,state,pin,roomtype,pass,canteen,sport) VALUES('"+fname+"','"+lname+"','"+year+"','"+sic+"',"+mob+",'"+email+"','"+gender+"','"+father+"','"+mother+"','"+city+"','"+state+"',"+pin+",'"+roomtype+"','"+pass+"','"+canteen+"','"+sport+"')";
	session.setAttribute("sic",sic);
	session.setAttribute("fname",fname);
	session.setAttribute("lname",lname);
	
	Statement smt = con.createStatement();
	int i = smt.executeUpdate(qry);
	if(i>0){
		response.sendRedirect("terms.html"); 
	} 
	else {
		out.println("your registeration fails");
		response.sendRedirect("registration.html");
	}}catch(Exception e){
		out.println("failed try again!!");
	 response.sendRedirect("registration.html");

}
%>

</body>
</html>