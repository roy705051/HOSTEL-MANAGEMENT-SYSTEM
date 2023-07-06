<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
   <link rel="icon" type="image/x-icon" href="Image/hostel.png">
    <link rel="stylesheet" href="styling.css" type="text/css">
    <style>
    h1{
    text-align: center;
    margin-right: 100px;
}    </style>
</head>
<body>
<%
String sic= (String)session.getAttribute("sic");
String fname= (String)session.getAttribute("fname");
String lname= (String)session.getAttribute("lname");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
	String qry = "select * from student where sic='"+sic+"'";
	Statement smt = con.createStatement();
    ResultSet rs = smt.executeQuery(qry);
	while(rs.next()){
	%>
<div class="main">
    <div class="register">
        <h1 style="margin-left:50px;">Details</h1>
        <form id="register" action="update.jsp" method="post">
            <br>
            <Label>First Name:</Label>
            &nbsp;
            <input type="text" id="name" name="fname" value="<%=rs.getString("fname")%>">
            &nbsp;&nbsp;&nbsp;
            <Label>Last Name:</Label>
            &nbsp;
            <input type="text" id="name" name="lname" value="<%=rs.getString("lname")%>">
            <br><br>
            <label>Year: </label>
            <%=rs.getString("year")%>
            &nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label>SIC No:</label>
            &nbsp;
            <input type="text" id="name" name="sic" value="<%out.println(sic);%>" >
            <br><br><br>
            <label>Phone Number:</label>
            <input type="number" id="name" name="pno" value="<%=rs.getLong("phone")%>" >
            &nbsp;&nbsp;&nbsp;
            <label>Email Address: </label>
            <input type="email" id="name" name="email" value=<%=rs.getString("email")%>>
            <br><br>
            <label>GENDER:</label><br>
            <%=rs.getString("gender")%>
            <br><br>
            <label>Father's Name</label>
            <input type="text" id="pname" name="father" value=<%=rs.getString("father")%>>
            &nbsp;&nbsp;&nbsp;
            <label>Mother's Name</label>
            <input type="text" id="pname" name="mother" value=<%=rs.getString("mother")%> >
            <br><br>
            <label>ADDRESS:</label>
            <br>
            <label>City: </label>&nbsp;
            <input type="text" id="name"  name="city" value=<%=rs.getString("city")%>>
            &nbsp;&nbsp;
            <label>State: </label>&nbsp;
            <input type="text" id="name" name="state" value=<%=rs.getString("state")%>>
            <br><br>
            <label>Pincode: </label>&nbsp;
            <input type="text" id="name" name="pin" value=<%=rs.getInt("pin")%>>
            <br><br><br>
            <label>Room type: </label><%=rs.getString("roomtype")%>
            <br><br><br>
            <label>Canteen: </label><%=rs.getString("canteen")%>
            <br><br>
            <label>Sports: </label><br>
            <%=rs.getString("sport")%>
            <br><br>
            <br><br><br>
            <a href="dashboard.jsp"><button type="submit" id="submit" class="mybutto">Go back</button></a>
             <button type="submit" id="submit" class="mybutton">Update</button>
            <br><br>
            <%}%>
</body>
</html>