<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
 <%
 String si= (String)session.getAttribute("sic");
 if(si==null)
 {
	 response.sendRedirect("index.html");
 }
 %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Canteen registration</title>
<link rel="icon" type="image/x-icon" href="Image/hostel.png">
<style>
  .complaincon{
background-color: rgba(221, 160, 221, 0.604);
margin-top: 10%;
font-size: 28px;
border: 2px solid purple;
border-radius: 15px;
box-shadow: 12% slateblue;
margin-left: 15%;
margin-right: 15%;

}
.complain{
	text-align:center;
   margin-left: 20px;
}
h1{
   text-align: center;
   text-decoration: underline;
   color: blueviolet;
}
.sport{
   width:60%;
   height:30px
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
  table{
    width: 95%;
    margin: 10px;
    padding: 12px;
    text-align:left;
    border: 1px solid green;
  }
   </style>
</head>
<body>
<div class="complaincon">
<a href="dashboard.jsp"><button class="mybutto">Go back</button></a> 
        <h1>Sports Registration</h1>
        <div class="complain">
        <form action="sports.jsp" method="post">
            <label>SIC :<input type="text" autocapitalize="on"></label>
            <br><br>
            Sports Prise:<br>
           <br> <table class="table">
            <caption>club and Prise</caption>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Sports Club</th>
      <th scope="col">Sports</th>
      <th scope="col">PRISE</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>FootBall Club</td>
      <td>Football</td>
      <td>Rs.1000</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Badminton Club</td>
      <td>Badminton</td>
      <td>Rs.1000</td>
    </tr>
    <tr>
        <th scope="row">3</th>
      <td>Cricket Club</td>
      <td>Cricket</td>
      <td>Rs.1200</td>
    </tr>
  </tbody>
</table>
<br><br><br>
            <label>Select your Sport Club: </label>
            &nbsp;
            <select class="sport" name="sport">
                <option>--select--</option>
                <option value="FootBall Club">FootBall Club</option>
                <option value="Badminton Club">Badminton Club</option>
                <option value="Cricket Club">Cricket Club</option>
                </select>
                <br><br>
            <br></th><button type="submit" class="mybutton">Submit</button>
       </form>
       
    
     <%
     String sport=(String)request.getParameter("sport");
     String sic=(String)session.getAttribute("sic");
     if(sport!=null){
     try{
    	 session.setAttribute("sport", sport);
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
    		String qry = "update student set SPORT='"+sport+"' where sic='"+sic+"' ";
    		Statement smt = con.createStatement();
    		int i = smt.executeUpdate(qry);
    		if(i>=0){
    			response.sendRedirect("sports.html"); 
    		} 
    		else {
    		}}catch(Exception e){
    			out.println(e);

    	}
     }
    	%>
    </div>
    </div>
</body>
</html>