<%-- 
    Document   : addroom
    Created on : Apr 4, 2021, 1:49:28 PM
    Author     : Extension
--%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>rooms</title>
</head>
    <body>
       <h1><span>Room Recored </span></h1>   
       
     <% 
          try{
         if(request.getParameter("submit")!=null){
          int roomid =Integer.parseInt(request.getParameter("Rid"));
          String roomtype=request.getParameter("Rtype");
           int roomprice=Integer.parseInt(request.getParameter("Rprice"));
           String reserve=request.getParameter("Reserve");
    Class.forName("com.mysql.jdbc.Driver");//(fname,lname,email,pass,confrim)
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
    PreparedStatement pst=con.prepareStatement("insert into room values(?,?,?,?)");
           pst.setInt(1,roomid);
           pst.setString(2,roomtype);
           pst.setInt(3,roomprice);
           pst.setString(4,reserve);
          int r=pst.executeUpdate();
          if(r>0)
                  {
    out.print("<br><h1 style=color:red;padding-left:40px>Record Inserted Successfully</h1>");
                  }
else {
out.print("<br><h1 style=color:red;>There is a problem</h1> ");
}
 %>
<a href="viewroom.jsp "><p style=padding-left:30%><button type="button">View</button></p></a>
<%

         }
          }catch(Exception e){
             out.println(e); 
          }
          %> 
             <form action="" method="post" >
         <h3> Room id</h3><input type="text" name="Rid"> <br>
         <h3>Room type</h3><br> 
         <select name="Rtype" style="width:130px">
                             <option >Duplex</option>
				 <option>Triple</option>
                                      <option >Single</option>
                </select><br>
            
                <h3>Price</h3><input type="text" name="Rprice"><br>
                  <h3>Free</h3><br> 
         <select name="Reserve" style="width:130px">
                             <option >No</option>
                             <option>Yes</option>
                </select><br>
            <br><br>
 <img src="../../../image/insert.png" style="width: 40px;height: 40px"/> <input type="submit" name="submit" value="save" style="height: 40px;width: 80px">
          
            
     </form>
             
          </body>
           </html>