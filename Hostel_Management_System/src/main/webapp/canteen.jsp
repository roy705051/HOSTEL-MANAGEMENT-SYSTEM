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
background-color: rgba(0, 128, 0, 0.496);
margin-top:1%;
font-size: 28px;
border: 2px solid purple;
border-radius: 15px;
box-shadow: 12% slateblue;
margin-left: 15%;
margin-right: 15%;
padding-top:10px;
padding-bottom: 10px;

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
.comp{
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
    margin:10px;
  }
  table{
    width: 95%;
    margin: 10px;
    padding: 12px;
    text-align:left;
    border: 1px solid green;
    background-color:red: 
    border
  }
   </style>
</head>
<body>

<div class="complaincon">
<a href="dashboard.jsp"><button class="mybutto">Go back</button></a> 
        <h1>Canteen Registration</h1>
        <div class="complain">
        <form action="canteen.jsp" method="post">
            <label>SIC :<input type="text" autocapitalize="on"></label>
            <br><br>
            Food Prise:<br>
           <br> <table class="table">
            <caption>Canteen and Prise</caption>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">CANTEEN</th>
      <th scope="col">FOOD</th>
      <th scope="col">PRISE</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Veg_Canteen</td>
      <td>veg_food</td>
      <td>Rs.3200</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Non_Veg_Canteen</td>
      <td>Non_Veg_Food</td>
      <td>Rs.4000</td>
    </tr>
    <tr>
        <th scope="row">3</th>
      <td>NonVeg/Veg_Canteen</td>
      <td>NonVeg/Veg_Food</td>
      <td>Rs.3600</td>
    </tr>
  </tbody>
</table>
<br><br>
<label>This will reflect for one month:</label>
            <label>Select your meal type: </label>
            &nbsp;
            <select class="comp" name="canteen">
                <option>--select--</option>
                <option value="Veg_Canteen">Veg_Canteen</option>
                <option value="Non_Veg_Canteen">Non_Veg_Canteen</option>
                <option value="Both">Both</option>
                </select>
                <br><br>
            <br></th><button type="submit" class="mybutton">Submit</button>
       </form>
       	
    
     <%
     String canteen=(String)request.getParameter("canteen");
     String sic=(String)session.getAttribute("sic");
     if(canteen!=null && canteen!="NO"){
     try{
    	 session.setAttribute("canteen", canteen);
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
    		String qry = "update student set canteen='"+canteen+"' where sic='"+sic+"' ";
    		Statement smt = con.createStatement();
    		int i = smt.executeUpdate(qry);
    		if(i>=0){
    			response.sendRedirect("canteen.html"); 
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