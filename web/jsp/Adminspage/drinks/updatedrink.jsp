<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String id = request.getParameter("did");
String type=request.getParameter("dtype");
String name=request.getParameter("dname");
String price=request.getParameter("dprice");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName("com.mysql.jdbc.Driver");
 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","" );
String sql="Update drink set Did=?,Dtype=?,Dname=?,Dprice=? where Did="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, type);
ps.setString(3, name);
ps.setString(4, price);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("<br><h1 style=color:red;padding-left:40px>Record Updated Successfully</h1>");
%>
<a href="Viewdrink.jsp "><p style=padding-left:50%><button type="button">View</button></p></a>
<%
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>

     <%
         //fecthing the data from the database
try{
     String did=request.getParameter("id");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","" );
  Statement stmt=conn.createStatement();
  String sql ="select * from drink where Did="+did;
  ResultSet resultSet = stmt.executeQuery(sql);
  while(resultSet.next()){
%>
<form method="post" action="">
    Food Id:<br>
    <input type="text" name="did" value="<%=resultSet.getString("Did") %>" readonly>
    <br>
Food type:<br>
<input type="text" name="dtype" value="<%=resultSet.getString("Dtype") %>">
<br>
Food name:<br>
<input type="text" name="dname" value="<%=resultSet.getString("Dname") %>">
<br>
price:<br>
<input type="text" name="price" value="<%=resultSet.getString("Dprice") %>">
<br>

<br><br>
 <input type="submit" name="submit" value="Update">
</form>
    
           <%
 conn .close();
}

} catch (Exception e) {
}
%>
   
    </body>
</html>
