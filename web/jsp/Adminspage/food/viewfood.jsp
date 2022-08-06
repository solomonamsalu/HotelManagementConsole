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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link href="../../../css/table.css" rel="stylesheet" type="text/css"/>
        <title>view room</title>
             <script language="javascript">
               
function deleteRecord(foodid){
    var doIt=confirm('Do you want to delete the record?');
  if(doIt){
   var f=document.form;
    f.method="post";
    f.action='deletefood.jsp?id='+foodid;
    f.submit();
    }
  else{
 
    }
}
</script>
    </head>
    <body>
        <h1 style="color: blue;text-align: center">list of foods  </h1><br>
        <hr/>
        <form  action="" name="form">
           
<table border="1">
    <tr><th><a href="Addfood.jsp"><button type="button" class="update"> <img src="../../../image/insert.png" style="width: 30px;height: 50px"/>Add</button></a></th>
    <th><a href="../../common/Admin.jsp"><button type="button" class="update"> <img src="../../../image/home.png" style="width: 30px;height: 50px"/>Home</button></a></th></tr>
<tr>
                            <th>food number</th>
                            <th>foodtype</th>
                            <th>foodname</th>
                            <th>Price</th>
                            <th>Edit</th>
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
rs = stmt.executeQuery("select * from food");

while(rs.next()){
     String id = rs.getString("foodid");
%>
<tr>
<td><%=rs.getString("foodid") %></td>
<td><%=rs.getString("foodtype") %></td>
<td><%=rs.getString("foodname") %></td>
<td><%=rs.getString("price") %></td>
 <td><a href="updatefood.jsp?id=<%=rs.getString(1)%>"><button type="button" class="update">  <img src="../../../image/edit.jpg" style="width: 30px;height: 30px"/>Edit</button></a></td> 
<td><button  onclick="deleteRecord(<%=rs.getString(1)%>);"><img src="../../../image/delete.png" style="width: 30px;height: 30px"> Delete </button></td>
</tr>

</tr>
<%
}
con.close();
}catch (Exception e) {
e.printStackTrace();
}
%>
</table>
    </form>
</body>
</html>
           