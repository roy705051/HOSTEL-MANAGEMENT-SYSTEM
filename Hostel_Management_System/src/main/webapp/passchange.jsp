<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<link rel="icon" type="image/x-icon" href="Image/hostel.png">
<style>
    .continerpass{
      background-color: rgba(0, 128, 0, 0.496);
margin-top: 10%;
font-size: 28px;
border: 2px solid purple;
border-radius: 15px;
box-shadow: 12% slateblue;
margin-left: 25%;
margin-right: 25%;
padding: 20px;
}
.complain{
   text-align: left;
   margin-left: 20px;
}
h1{
   text-align: center;
   text-decoration: underline;
   color: blueviolet;
}
input{
   width:250px;
   height:23px;

}
.mybutton {
    margin-left:70%;
    width: 25%;
    padding: 10px 10px;
    font-size: 16px;
    background-color:rgba(124, 156, 59, 0.945);
    color:#fff;
    border-radius:12px;
  }
  .mybutton:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  }
  .mybutto:hover{
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  }
  .mybutto{
    width: 20%;
    padding: 10px 10px;
    font-size: 16px;
    background-color:rgba(124, 156, 59, 0.945);
    color:#fff;
    border-radius:12px;
    margin-bottom: 15px;
  }
</style>
</head>
<body>
    
<div class="continerpass">
    <a href="index.html"><button class="mybutto" id="l2">home</button></a>
        <h1>Change Password</h1>
<form action="passchange.jsp" method="post">
Enter your SIC:<input type="text" name="sic" required>
<br><br>
Enter your new password:<input type="password" id="pass1" name="pass" required>
<br><br>
Retype your new password:
<input type="password" id="pass1" name="pass1" required>
<br><br><br>
<button type="submit" class="mybutton" id="l2">confirm</button>
</form>
<%
String sic=request.getParameter("sic");
String pass=request.getParameter("pass");
String pass1=request.getParameter("pass1");
if(sic!=null){
if(pass.equals(pass1)){
	 try{
 		Class.forName("oracle.jdbc.driver.OracleDriver");
 		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
 		String qry = "update student set pass='"+pass+"' where sic='"+sic+"' ";
 		Statement smt = con.createStatement();
 		int i = smt.executeUpdate(qry);
 		if(i>=0){
 			
 			response.sendRedirect("loginvefi.jsp?sic="+sic+"&pass="+pass+""); 
 		} 
 		else {
 			
 		}}catch(Exception e){
 			out.println(e);
 			//response.sendRedirect("dashboard.jsp"); 

 	}
  }
else{
	
   out.println("password doesn't match \n please check!!");
	 
}}
 %>
</div>
</body>
</html>