
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<a href="../common/Admin.jsp"></a>


<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String pass="";
String id=null;
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from account where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getString(1);
pass=rs.getString(3);
} 
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update account set password='"+Newpass+"' where userid='"+id+"'");
out.println("<h2 style=color:red>Password changed successfully</h2>");
   %>
      <a href="../common/Login.jsp"><p style=padding-left:30%;padding-top:30px><button type="button">NowLogin</button></p></a>
      <%
st1.close();
con.close();
}
else{
out.print("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>
        <html>
            <head>
                <style>
                    
                       .f{
                           padding: 10%;
                           border-radius:50px 50px 50px 50px;
                           margin: 10%;
                           height: 125px;
                           width: 200px;
        font-size: 30px;
      font-weight: 800;
      color: navy;
      font-family:Georgia;
      font-style: italic;
        width: 60%;
  align-content: center;
    background-color:#ac91de;
      }
      form{
          
          
          padding-left: 20%;
          border-radius: 15px;
      }
      body{
          
          
          background-color: #3088c5;
      }
                </style>
                
                
            </head>
            
            <body>
           <div class="f">
                <form method="" action="">      
                       current password:<input type="text" name="current"><br><br>
                       newpassword:<input type="text" name="new"><br><br>
                      confrimpassword:<input type="text" name="confirm"><br><br>
                    <input type="submit" name="submit" value="change">
                    
                    
                </form>
           </div>
                
            </body>
        </html>
    </body></html>

