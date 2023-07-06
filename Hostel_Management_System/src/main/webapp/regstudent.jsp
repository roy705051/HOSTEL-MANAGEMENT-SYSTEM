<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="Image\hostel.png">
<title>Registered Student</title>
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
	<table class="table table-success table-striped">
		<h1> Registered Student</h1>
		<thead>
			<th>Sic</th>
			<th>Name</th>
			<th>year</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Details</th>
			<th>Delete</th>
		</thead>
		<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
		String qry = "select * from student";
		Statement smt = con.createStatement();
		ResultSet rs = smt.executeQuery(qry);

		while (rs.next()) {
		%>


		<tr>
			<td><%=rs.getString("sic")%></td>
			<td><%=rs.getString("fname")%></td>
			<td><%=rs.getString("year")%></td>
			<td><%=rs.getString("email")%></td>
			<td><%=rs.getString("phone")%></td>
			
			<%
			String sic= rs.getString("sic");
			session.setAttribute("sic",sic);%>
			<td><a href="profile.jsp?<%=rs.getString("sic")%>">Detail</a>
			<td><a href="delete.jsp?<%=rs.getString("sic")%>">Delete</a>
		</tr>
	


	<%
	}
	%>
	</table>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>