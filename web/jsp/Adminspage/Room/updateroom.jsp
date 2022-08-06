<%-- 
    Document   : updateroom
    Created on : Apr 5, 2021, 6:39:47 AM
    Author     : Extension
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>updating Recored</title>
    </head>
    <body>
         <%
   String id = request.getParameter("Rid");
String Roomtype=request.getParameter("Rtype");
String Roomprice=request.getParameter("Rprice");
String Reserve =request.getParameter("Reserve");
if(id != null)
{
Connection conn = null;
PreparedStatement ps = null;
try
{
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
String update="Update room set Rid=?,Rtype=?,Rprice=?,Free=? where Rid="+id;
ps = conn.prepareStatement(update);
ps.setString(1,id);
ps.setString(2, Roomtype);
ps.setString(3, Roomprice);
ps.setString(4,Reserve);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("<br><h1 style=color:red;padding-left:40px>Record Updated Successfully</h1>");
%>
<a href="viewroom.jsp "><p style=padding-left:50%><button type="button">Back</button></p></a>
<%
}
else 
{
out.print("<br><h1 style=color:red;>There is a problem in updating Record.</h1>");
}
}
    
catch(Exception e)
{
out.println(e);
}
}
%>
     <%
         //fecthing the data from the database
try{
    String Rid = request.getParameter("id");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","" );
Statement stmt=con.createStatement();
String sql ="select * from room where Rid="+Rid;
ResultSet resultSet = stmt.executeQuery(sql);
while(resultSet.next()){
%>
    <form action="" method="post" >
        <h3> Room id</h3><input type="text" name="Rid" value="<%=resultSet.getString("Rid") %>" readonly> <br>
         <h3>Room type</h3><br> 
         <select name="Rtype" style="width:130px" value="<%=resultSet.getString("Rtype") %>">
                                <option> Duplex</option>
				   <option >Triple</option>
                                     <option >Single</option>
                </select><br>
            
                <h3>Price</h3><input type="text" name="Rprice" value="<%=resultSet.getString("Rprice") %>"><br>
                
                  <select name="Reserve" style="width:130px">
                             <option >No</option>
                             <option>Yes</option>
                </select><br>

                
                <br><br>
           <input type="submit" name="submit" value="Update">
            
     </form>
           <%
 con .close();
}

} catch (Exception e) {
}
%>
   
    </body>
</html>
