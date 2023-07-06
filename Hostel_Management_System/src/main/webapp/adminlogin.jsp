<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login</title>
<link rel="icon" type="image/x-icon" href="Image\hostel.png">
  
<link rel="stylesheet" href="index.css">

</head>
<body>
<div id="formboxLogin">
            <span class="close" onclick="get()">&times;</span>
            <h1>Admin Login</h1>
            <form action="adminlogin.jsp" method="post">
         <div class="inputbox">
                    <span class="icon"><ion-icon></ion-icon></span>
                    <input type="text"  name="username" required autocapitalize="on">
                    <label>Username</label>
                </div>
                <div class="inputbox">
                    <span class="icon"><ion-icon ></ion-icon></span>
                    <input type="password" name="pass" required>
                    <label>password</label>
                    <br><br>
                </div>
                <div class="rememberMe">
                    <label><input type="checkbox">
                        Remember me</label>
                    <br><br>
                    <a href="#">Forgot password</a>
                </div>
                <button type="submit" class="btn">Login</button>
                <div class="login_register">
                    <br>
                    <p>Need an accomadation ? <a href="#" class="register_link"> Register</a></p>
                </div>
            </form>
        </div>
<% 
       String username=request.getParameter("username");
       String password=request.getParameter("pass");
       if(username!=null)
       {
    	   try{
    			Class.forName("oracle.jdbc.driver.OracleDriver");
    			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "SMILICON", "system");
    			String qry = "select * from admin where username='"+username+"'";
    			Statement smt = con.createStatement();
    		    ResultSet rs = smt.executeQuery(qry);
    			while(rs.next()){
    				String pass = rs.getString("pass");
    			if(password.equals(pass)){
    				session.setAttribute("username",username);
    				
    				response.sendRedirect("admindashboard.jsp"); 
    			} 
    			else {
    				out.println("Wrong Username or Password \n try again!!");
    			} }
    			rs.close();
    			smt.close();
    			con.close();}catch(Exception e){
    				out.println("Wrong Username or Password \n try again!!");
    			 
    		}}

  %>
 <script>
 function get() {
	 window.location.assign("index.html");
  
}
</script>
 </body>
</body>
</html>