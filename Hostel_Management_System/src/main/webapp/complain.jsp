<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complain</title>
<link rel="icon" type="image/x-icon" href="Image/hostel.png">
   <style>
 
    .complaincon{
background-color: rgba(0, 128, 0, 0.496);
margin-top: 10%;
font-size: 28px;
border: 2px solid purple;
border-radius: 15px;
box-shadow: 12% slateblue;
margin-left: 25%;
margin-right: 25%;

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
.comp{
   width:50%;
   height:25px
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
    margin-bottom: 10px
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
    margin-bottom: 10px;
    margin:10px
  }
   </style>
</head>
<body>
<div class="complaincon">
<a href="dashboard.jsp"><button class="mybutto">Go back</button></a>
        <h1>COMPLAIN BOX</h1>
        <div class="complain">
        <form action="complain.jsp" method="post">
            <label>SIC :<input type="text" autocapitalize="on"></label>
            <br><br>
            <label>Type of complain: </label>
            &nbsp;
            <select class="comp" name="type" required>
                <option>--select--</option>
                <option value="ROOM_COMP">Room Complain</option>
                <option value="GENERAL_COMP">General</option>
                <option value="SUGGS">Suggestion</option>
                </select>
                <br><br>
            <label>Complain:</label><br>
            <textarea  cols="60" rows="8" style="text-size:5px;"  min=10 name="comp" required></textarea>
             <br><button type="submit" class="mybutton">Submit</button>
       </form>
       
     <%
     String type=(String)request.getParameter("type");
     if(type!=null){
     String sic=(String)session.getAttribute("sic");
     String comp=(String)request.getParameter("comp");
     
     
     try{
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
    		String qry = "update student set "+type+"='"+comp+"' where sic='"+sic+"' ";
    		Statement smt = con.createStatement();
    		int i = smt.executeUpdate(qry);
    		if(i>=0){
    			
    			 out.println("Your Complain has been subbmited \n We will solve it very soon..");
    		} 
    		else {
    			//response.sendRedirect("dashboard.jsp"); 
    		}}catch(Exception e){
    			out.println("Please give the correct detail");

    	}
     }
    	%>
    </div>
    </div>
</body>
</html>