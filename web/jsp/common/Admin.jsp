<%-- 
    Document   : Admin
    Created on : Apr 4, 2021, 1:29:17 PM
    Author     : Extension
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="../../css/style1.css" rel="stylesheet" type="text/css"/>
        <title>Web based hotel managment</title>
        <style>
            .nav{
                font-size:40px;
                color:green;
                font-weight:bold;
                text-align:center
            }
            .main {
                border: 5px solid green;
                float: right;
                min-height: 180px;
                margin: 100px;
                padding: 10px;
                min-width: 500px;
                position:relative;
            }
             body{
                
                   background-image: url("../../image/backg.jpg");
                   background-size: cover;
                   background-origin: border-box;
                   image-resolution: 600dpi;
                
            }
            
            marquee {
        font-size: 60px;
        color: #ac2013;
      font-family:Georgia;
      font-style: italic;
      font-weight: bold;
        width: 80%;
        padding: 25px 0;
        padding-top: 15%;
    
      }
    
        footer{
                border: 40px darkblue;
                border-radius:15px; 
              background-color: #6455cc; 
             width: 100%;
             height: 40px; 
             color: white; 
             text-align: right;
             font-style: italic;
             font-weight: bolder;
             padding-bottom: 0px; 
             position: absolute; bottom: 0;
             display: block;
             }
        </style>
   </head>
  <body>
      <div class="nav">
          
          
          <ul>
              
     <li><a href="#">Home</a></li>
     <li><a href="#">Rooms</a>
         <ul>
          <a href="../../common/Admin.jsp">
             <li>  <a href="../../common/Admin.jsp/Room/viewroom.jsp">view room detail</a></li>
             <li><a  href="../Adminspage/Room/addroom.jsp"> add rooms</a></li>
         </ul> </li>
        
         
     
   <li><a href="#">Food</a>
<ul>   
	<li> <a href="../Adminspage/food/viewfood.jsp">view foods</a></li>
         <li> <a href="../Adminspage/food/Addfood.jsp">add foods</a></li>
</ul> 
     </li>
  <li><a href="#">Drink</a>
<ul>
   
	<li> <a href="../Adminspage/drinks/Viewdrink.jsp">View_drinks</a></li>
         <li> <a href="../Adminspage/drinks/Adddrink.jsp"> Add_drinks </a></li>
</ul> 
      </li>
           
      <li> <a href="../Adminspage/changepassword.jsp">Change_Password</a></li>
                 
            <li> <a href="Login.jsp">Logout</a></li>
 </ul>
      </div>
<hr/><br><br>
           
          <marquee  scrolldelay="130"> Admins page hotel managment system</marquee>    
      <footer style="position: absolute; bottom: 0;">
            <a href="../Adminspage/feedback.jsp"><b style="color: indigo;font-family: Georgia;font-style: italic;padding-right: 40">Feedback</b></a>
         
           <a href="#"><b style="color: indigo;font-family: Georgia;font-style: italic;padding-right: 40">contact us</b></a>
           
         &nbsp; &nbsp;&nbsp;&nbsp;
        	
		&copy; All rights reserved! Developed by: Group5 @2014 E.C
        </footer>
     
    </body>
</html>
