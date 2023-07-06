<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
      String sic=(String)session.getAttribute("sic");
       if(sic==null)
       {
    	   response.sendRedirect("index.html");
       }
    %>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="Image\hostel.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lora:ital,wght@1,500&display=swap');
    </style>
    <link rel="stylesheet" href="dash.css">
    <title>Dash_board</title>
<title>Insert title here</title>
</head>
<body>
<% String fname = (String)session.getAttribute("fname");
   String lname = (String)session.getAttribute("lname");
%>
    <div class="profile">
        <!-- <span>silicon hostel</span> -->
        <img src ="Image\back_img\logo.png" class="logo1">

        <div class="icone">
            <img src ="Image\back_img\mesg.png" class="i1" onclick="r4()">
           <!--  <img src ="Image\back_img\bell_icon.jpg" class="i1"> -->
           <button type="button" class="btn btn-danger" onclick="logout()">LOGOUT</button></a>
        
        </div>
        <img src="Image/back_img/profil.png" alt="Avatar" class="avatar">
        <span class="tran_text">Hello!!</span>
        <span class="tran_text"> <%out.println(fname+" "+lname);%>
        </span>
        <div class="tran_btn">
            <button id="dash" type="button" onclick="btnshift_l()">Dash Board</button>
            <button id="approv" type="button" onclick="btnshift_r()">APPROVAL</button>
        </div>
    </div>
    <br><br>
    <div class="dash_container" id="dash_container">
        <div class="card_series">
            <div class="card">
                <a href="profile.jsp"><img src="Image\back_img\profile.jpg" class="card-img-top" alt="..."></a>
                <h3>PROFILE</h3>
            </div>
            <div class="card">
              <img src="Image\back_img\registration.jpg" class="card-img-top" alt="..." onclick="r1()">
            </div>
            <div class="card">
               <img src="Image\back_img\complaint-pic.webp" class="card-img-top" alt="..." onclick="r2()">
            </div>
            <br>
            <br>
            <div class="card">
                <img src="Image\back_img\leave.jpeg"  onclick="r3()">
            </div>
            <div class="card">
               <a href="canteen.jsp"><img src="Image\back_img\canteen1.jpg" class="card-img-top" alt="..."></a> 
            </div>
            <div class="card">
               <a href="sports.jsp"><img src="Image\back_img\sports1.jpg" class="card-img-top" alt="..."></a> 
            </div>
            <div class="card" id="terim">
                <a href="termination.jsp"><img src="Image\back_img\termination.jpg" class="card-img-top" alt="..."></a>
                
            </div>
        </div>
    </div>
        <footer>
            &copy Thank you;
        </footer>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
    <script src="Script.js"></script>
    <script>
    function r1(){
        window.location.assign("registration1.html")
    }
    function r3(){
        window.location.assign("leave.jsp")
    }
    function r2(){
        window.location.assign("complain.jsp")
    }
    function r4(){
        window.location.assign("notif.jsp")
    }
    function logout()
    {
    	let p = confirm("PRESS YES TO CONMIRM :)")
    	if(p==true)
    		{
    		window.location.assign("logout.jsp");
    		}
    }
    
    </script>
    
</body>

</html>