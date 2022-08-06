
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
  <%@page import="java.util.*"%>
  <!DOCTYPE html>
<html>
    <title> food recored</title>
<body>   
  <h1 style="text-align: center;color: blue"> Add foods to the system</h1>
 
   <hr/>

<%
     if(request.getParameter("submit")!=null){
          try{
    
  int foodid=Integer.parseInt(request.getParameter("fid"));
String foodname=request.getParameter("fname");
String foodtype=request.getParameter("ftype");
String price=request.getParameter("price");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
    PreparedStatement pst=con.prepareStatement("insert into food values(?,?,?,?)");
           pst.setInt(1,foodid);
           pst.setString(2,foodtype);
           pst.setString(3,foodname);
           pst.setString(4,price);
          int r=pst.executeUpdate();
          if(r>0)
                  {
    out.print("<br><h1 style=color:red;padding-left:40px>Record Inserted Successfully</h1>");
    %>
      <a href="viewfood.jsp "><p style=padding-left:30%;padding-top:30px><button type="button">View</button></p></a>
      <%
                  }
else {
out.print("<br><h1 style=color:red;>There is a problem</h1> ");
}
 
         
          }catch(Exception e){
              
          }
     }
          %> 
    
<form method="post" action="">
    Food Id:<br>
    <input type="text" name="fid">
    <br>
    Food Type:<br>
<input type="text" name="ftype">
<br>
Food name:<br>
<input type="text" name="fname">
<br>
price:<br>
<input type="text" name="price">
<br>

<br><br>
 <img src="../../../image/insert.png" style="width: 40px;height: 40px"/><input type="submit" name="submit" value="save">
</form>
          
</body>
</html>