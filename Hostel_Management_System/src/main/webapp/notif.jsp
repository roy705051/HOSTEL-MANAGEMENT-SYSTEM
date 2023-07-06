<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notification</title>
<link rel="icon" type="image/x-icon" href="Image\hostel.png">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<style>
body {
	margin-left: 2%;
	margin-right: 2%;
}

table {
	width: max-content;
	height: max-content;
	text-align: center;
	font-size: 25px;
	font: sans-serif;
}

h1 {
	text-align: center;
	color: rgba(179, 127, 58, 0.848);
}
</style>
</head>
<body>
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
	String qry = "select * from admin where username ='warden'";
	Statement smt = con.createStatement();
	ResultSet rs = smt.executeQuery(qry);
	while (rs.next()) {
	%>

	<table class="table table-success table-striped">
		<h1>NOTIFICATION</h1>
		<tr>
			<td colspan="80" rowspan="10"><%=rs.getString("msg") %></td>
		</tr>
	</table>


	<%
	}
	%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>