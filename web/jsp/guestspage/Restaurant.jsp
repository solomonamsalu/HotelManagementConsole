<%-- 
    Document   : Restaurant
    Created on : Apr 7, 2021, 2:59:37 AM
    Author     : Extension
--%>

<%@page import="java.sql.*"%>
<link href="../../css/table.css" rel="stylesheet" type="text/css"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <head>
    <link href="../../../css/table.css" rel="stylesheet" type="text/css"/>
 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restuarant</title>
        <style>
           marquee {
                   font-size: 30px;
      font-weight: 800;
      color: navy;
      font-family:Georgia;
      font-style: italic;
        width: 100%;
        padding: 10px 0;
        background-color: graytext;
      }
    </style>
    
    
    </head>
        <body>
          <marquee direction="scroll">Available Foods and Rooms now</marquee>
         <a href="../../index.jsp"><button type="button" > <img src="../../image/home.png"  style="width: 30px;height: 30px;" /><h3 style="color:red">Home </h3></button></a>
         <b style="color: #0060c3;font-size: 2em;background-color:navajowhite">See available food  and drinks numbers here and you can order at orders link</b>
<div class="food">
    <table border="1" style="" >
<tr>
                            <th>foodnumber</th>
                            <th>foodtype</th>
                            <th>food name</th>
                            <th>Price</th>
                            
                             
</tr>
<%
try{
                    Connection con;
                    Statement stmt ;
                    ResultSet rs;
 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","" );
stmt=con.createStatement();
rs = stmt.executeQuery("select * from food");

while(rs.next()){
     String id = rs.getString("foodid");
%>
<tr>
<td><%=rs.getString("foodid") %></td>
<td><%=rs.getString("foodtype") %></td>
<td><%=rs.getString("foodname") %></td>
<td><%=rs.getString("price") %></td>
 
</tr>
<%
}
con.close();
}catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
<div class="drink">      <h1 style="color: blue;">list of Drinks</h1>  
<table border="1" >
    <thead>
       
<tr>
                            <th>Drink_id</th>
                            <th>Drink_type</th>
                            <th>Drink_name</th>
                            <th>Drink_price</th>
</tr>
    </thead>
    <tbody>
<%
try{
                    Connection con;
                    Statement stmt ;
                    ResultSet rs;
 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","" );
stmt=con.createStatement();
rs = stmt.executeQuery("select * from drink");
while(rs.next()){ 
      String id = rs.getString("Did");

%>
<tr>
<td><%=rs.getString("Did") %></td>
<td><%=rs.getString("Dtype") %></td>
<td><%=rs.getString("Dname") %></td>
<td><%=rs.getString("Dprice") %></td>   
</tr>
    
<%
}

con.close();
}catch (Exception e) {
e.printStackTrace();
}
%>

</tbody>
</table>
</div>

 </form>                
    </body>
</html>
