<%-- 
    Document   : viewroom
    Created on : Apr 4, 2021, 3:08:02 PM
    Author     : Extension
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
       <head>
    <link href="../../../css/style.css" rel="stylesheet" type="text/css"/>
 <link href="../../css/table.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view room</title>
          <style>
           marquee {
                   font-size: 30px;
      font-weight: 800;
      color: navy;
      font-family:Georgia;
      font-style: italic;
        width: 100%;
        padding: 10px 0;
      
      }
    </style>
 </head>
    <body>
 <marquee direction="scroll">Available List of  Rooms now</marquee> 

 <a href="../../index.jsp"><button type="button" > <img src="../../image/home.png"  style="width: 30px;height: 30px;" /><h3 style="color:red">Home </h3></button></a>
 <b style="color: #0060c3;font-size: 2em">See free room numbers here and you can order at orders links by these number</b>
 <table border="1" class ="tab">
<tr>
                            <th>Room number</th>
                            <th>Roomtype</th>
                            <th>Roomprice</th>
                            <th>Free</th>
                            
                            
</tr>
<%
try{
                    Connection con;
                    Statement stmt ;
                    ResultSet rs;
 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","" );
stmt=con.createStatement();
rs = stmt.executeQuery("select * from room");

while(rs.next()){
     String id = rs.getString("roomid");
%>
<tr>
<td><%=rs.getString("roomid") %></td>
<td><%=rs.getString("roomtype") %></td>
<td><%=rs.getString("roomprice") %></td>
<td><%=rs.getString("reserve") %></td>
</tr>
<%
}
con.close();
}catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
           