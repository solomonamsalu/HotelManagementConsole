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
    <link href="../../../css/table.css" rel="stylesheet" type="text/css"/>
 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view room</title>
        <style>  td{
       font-size: 30px;
      font-weight: 800;
      color: navy;
      font-family:Georgia;
      font-style: italic;
        width: 80%;
        padding: 10px 0;
     
      }
            </style>
            <script language="javascript">
               
function deleteRecord(roomid){
    var doIt=confirm('Do you want to delete the record?');
  if(doIt){
   var f=document.form;
    f.method="post";
    f.action='deleteroom.jsp?id='+roomid;
    f.submit();
    }
  else{
 
    }
}
</script>

    </head>
        <body> 
   
<form  action="" name="form">
             <div  style ="position: relative;float: right">
         <table border="1">
                                       
                             <input type="text" name="search">
                            <input type="submit" name="id" value="Search">
                                   <tr>
                                       <td>RoomID</td>
                                     <td>Room_Name</td>
                                      <td>Room_price</td>
                                      <td>Free</td>
                                  
                                   </tr>   
                            <%
                          try{
                                 
                                Class.forName("com.mysql.jdbc.Driver");
                               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root",""); 
                                Statement pstmt=con.createStatement(); // sql select query
                                    int fth=Integer.parseInt(request.getParameter("search"));
                                    String sqlStr="select *from room where roomid="+fth;
                                ResultSet resultSet=pstmt.executeQuery(sqlStr); // execute query store in resultset object rs.    
				 while(resultSet.next()){         
                                
                                  if(resultSet.getInt(1)==fth){
                                       
                                 %>
                                <tr>
                                <td><%=resultSet.getInt(1) %></td>
                                <td><%=resultSet.getString(2) %></td>
                                <td ><%=resultSet.getString(3)%></td>
                                <td style="color: red"><%=resultSet.getString(4)%></td>
                                </tr>
                                <%
                                    }
                              else 
                                {
                                out.print("Id not found");
                                
                                }
                               
                                  }
                          
} catch (Exception e) {
                              
                                   }
                                %>
           
                                    </table>
      
        <h1 style="color: blue;padding-left: 10%">list of rooms  </h1>
<table border="1">
     <tr><th><a href="addroom.jsp"><button type="button" class="update"> <img src="../../../image/insert.png" style="width: 30px;height: 50px"/><b style="color:purple">Add</b></button></a></th>
         <th><a href="../../common/Admin.jsp"><button type="button" class="update"> <img src="../../../image/home.png" style="width: 30px;height: 50px"/><b style="color:red">Home</b></button></a></th></tr>
 

     
     <tr>
                            <th>Room number</th>
                            <th>Roomtype</th>
                            <th>Roomprice</th>
                            <th>Free</th>
                            <th>Update</th>
                            <th>delete</th>
                            
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
<td style="color: red;font-family:"><%=rs.getString("Free") %></td>
  <td><a href="updateroom.jsp?id=<%=rs.getString(1)%>"><button  type="button" class="update">  <img src="../../../image/edit.jpg" style="width: 30px;height: 30px"/>Edit</button></a></td> 
  <td><button  onclick="deleteRecord(<%=rs.getString(1)%>);"><img src="../../../image/delete.png" style="width: 30px;height: 30px"> Delete </button></td>
</tr>
<%
}
con.close();
}catch (Exception e) {
e.printStackTrace();
}
//response.sendRedirect("search.jsp");
%>

</table>
     
              </div>               
   </form>   

</body>
</html>
           