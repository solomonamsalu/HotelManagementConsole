<%-- 
    Document   : deletedrink
    Created on : Apr 9, 2021, 12:09:05 PM
    Author     : Extension
--%>
<%@page import="java.sql.*"%>
 <% 
     String id = request.getParameter("id");
              Connection con;
              PreparedStatement pst;
              ResultSet rs;
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
              pst = con.prepareStatement("delete from drink where Did=?");
             
                        pst.setString(1,id);
                     int r= pst.executeUpdate(); 
                     if(r!=0){
                        out.println("<h1>Data Deleted Successfully!</h1>"); 
                        %>
                     
                        <a href="Viewdrink.jsp "><p style=padding-left:30%><button type="button">View</button></p></a>
                        <%
                     }
                     else{ %>
                        <a href="Viewdrink.jsp "><p style=padding-left:30%;padding-top:30px><button type="button">View</button></p></a>
                        <%
                          out.println("<h1>not delete!</h1>");
                     }
                      //  response.sendRedirect("viewroom.jsp");
                        %>
                       
                      