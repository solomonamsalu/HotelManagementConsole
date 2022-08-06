<%@page import="java.sql.*"%>

 <% 
     String id = request.getParameter("id");
              Connection con;
              PreparedStatement pst;
              ResultSet rs;
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
              pst = con.prepareStatement("delete from room where Rid=?");
             
                     pst.setString(1,id);
                     int r= pst.executeUpdate(); 
                     if(r!=0){
                        out.println("<h1 style=color:red;>Data Deleted Successfully!</h1>"); 
                        %>
                        <a href="viewroom.jsp "><p style=padding-left:30%><button type="button"><h1 style="color:red;background-color: blanchedalmond">Back</h1></button></p></a>
                        <%
                     }
                    
                    // response.sendRedirect("viewroom.jsp");
                    
                        %>
                       
                      
                        
                                