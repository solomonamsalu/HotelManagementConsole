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
        <title>view Drink</title>
             <script language="javascript">
               
function deleteRecord(id){
    var doIt=confirm('Do you want to delete the record?');
  if(doIt){
   var f=document.form;
    f.method="post";
    f.action='deletedrink.jsp?id='+id;
    f.submit();
    }
  else{
 
    }
}
</script>
    </head>
    <body>
        <h1 style="color: blue;text-align: center">list of Drinks</h1>  <hr/>
        <form action="" name="form">
<table border="1">
    <thead>
        <tr><th><a href="Adddrink.jsp"><button type="button" class="update"> <img src="../../../image/insert.png" style="width: 30px;height: 50px"/>Add</button></a></th>
         <th><a href="../../common/Admin.jsp"><button type="button" class="update"> <img src="../../../image/home.png" style="width: 30px;height: 50px"/>Home</button></a></th></tr>
<tr>
                            <th>Drink_id</th>
                            <th>Drink_ype</th>
                            <th>Drink_name</th>
                            <th>Drink_price</th>
                            <th>Edit</th>
                            <th>delete</th>
                          

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
 
%>

<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
  <td><a href="updatedrink.jsp?id=<%=rs.getString(1)%>"><button type="button" class="update">  <img src="../../../image/edit.jpg" style="width: 30px;height: 30px"/>Edit</button></a></td>
 <td><button  onclick="deleteRecord(<%=rs.getString(1)%>);"><img src="../../../image/delete.png" style="width: 30px;height: 30px;"> Delete </button></td>
   
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
        </form>
</body>
</html>
           