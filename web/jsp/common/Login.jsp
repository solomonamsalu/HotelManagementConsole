<%-- 
    Document   : l
    Created on : Apr 7, 2021, 5:51:16 PM
    Author     : Extension
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../../css/Login.css" rel="stylesheet" type="text/css"/>
      
 <link href="../../css/responsive.css" rel="stylesheet" type="text/css"/>
    </head>
<body>
 
    
    
    <%
        RequestDispatcher rd;
        String userid=request.getParameter("userid");
        String password=request.getParameter("password");
        String submit=request.getParameter("submit");
Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from account");
          try{  
  if(submit!=null){
       boolean flag=false;
          Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
           st=con.createStatement();
           rs=st.executeQuery("select * from account");
       
          while(rs.next()){
                if(userid.equals(rs.getString(1))&&password.equals(rs.getString(3))){
                    flag=true;
                   
request.getRequestDispatcher("Admin.jsp").forward(request, response);
             
              }
             }
      if(!flag){
      out.print("<h1 style=color:red;backgroundcolor:blue > plesase enter corect password??</h1>");
      }    
  }
  }catch(Exception e)
{out.println(e);}
       
%>
   <div class="login">  <h2 class="active"> Admin_Login </h2><br>
    

  <form action="" method="post">
     
      <h2>username</h2>:  <input type="text" class="text" name="userid" /><br>
    <h2>password</h2> <input type="password" class="text" name="password" /> 
  
    <br>
    <input type= "submit"  class="signin" name="submit" value="Login">
 

    <hr>
  </form>

</div>
</body>
</html>
     