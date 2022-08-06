<%@page import="java.sql.*"%>
 <% 
     String id = request.getParameter("id");
              Connection con;
              PreparedStatement pst;
              ResultSet rs;
              int r=0;
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
              pst = con.prepareStatement("delete from food where foodid=?");
             
                        pst.setString(1,id);
                      pst.executeUpdate();
                      r=1;
                     if(r!=0){
                       out.println("<h1 style=color:red;>Data Deleted Successfully!</h1>");
                        %>
                        <a href="viewfood.jsp "><p style=padding-left:30%><button type="button">Back</button></p></a>
                        <%
                     }
                     else{ %>
                        <a href="viewfood.jsp "><p style=padding-left:30%;padding-top:30px><button type="button">Back</button></p></a>
                        <%
                          out.println("<h1>not delete!</h1>");
                     }
                      //  response.sendRedirect("viewroom.jsp");
                        %>
                       
                      
                        
                                