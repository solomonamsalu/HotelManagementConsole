           <%@ page import="java.sql.*" %>  
             <%@page contentType="text/html" pageEncoding="UTF-8"%>
             
              
               
                                   <html>
                                       
                                       <body> <center>
                                       <div>
                               <h1> view your data by insert your Id number</h1>
                                         </div>
                                           </center>
                                          
                          
                               
                                    <table border="1">
                                   <tr>
                                       <td>RoomID</td>
                                     <td>Room_Name</td>
                                      <td>Room_price</td>
                                  
                                   </tr>
                                    <form method="post" action="">
                                    <input type="text" name="search"><br><br>
                            <input type="submit" name="id" value="Search">
                                 
                            <%
                          try{
                                 
                                Class.forName("com.mysql.jdbc.Driver");
                               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root",""); 
                                Statement pstmt=con.createStatement(); // sql select query
                                    int fth=Integer.parseInt(request.getParameter("search"));
                                    String sqlStr="select *from room where Rid='"+fth+"'";
                                ResultSet resultSet=pstmt.executeQuery(sqlStr); // execute query store in resultset object rs.    
				 while(resultSet.next()){         
                                  %>
                                <tr>
                                <td><%=resultSet.getInt(1) %></td>
                                <td><%=resultSet.getString(2) %></td>
                                <td><%=resultSet.getString(3)%></td>
                                </tr>
                                <% 
                                  }
                          }
                                 catch (Exception e) {
                              
                                   }
                                %>
                                     </form>  
                               </table>
                               </center>
</body>
</html>