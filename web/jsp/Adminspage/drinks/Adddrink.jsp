  <%@page import="java.sql.*"%>
<body>
       <h1><span>Drink  Recored </span></h1>   <hr/>
   
     <% 
          try{
         if(request.getParameter("submit")!=null){
          int Did =Integer.parseInt(request.getParameter("id"));
          String Dtype=request.getParameter("type");
          String Dname=request.getParameter("name");
           int Dprice=Integer.parseInt(request.getParameter("price"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
    PreparedStatement pst=con.prepareStatement("insert into drink values(?,?,?,?)");
           pst.setInt(1,Did);
           pst.setString(2,Dtype);
           pst.setString(3, Dname);
           pst.setInt(4,Dprice);
          int r=pst.executeUpdate();
          if(r > 0 )
                  {
    out.print("<br><h1 style=color:red;padding-left:40px>Record Inserted Successfully</h1>");
                  }
else {
out.print("<br><h1 style=color:red;>There is a problem</h1> ");
}
 %>
<a href="Viewdrink.jsp"><p style=padding-left:50%><button type="button">View</button></p></a>
<%

         }
          }catch(Exception e){
              
          }
          %> 
             <form action="" method="post" >
         <h3> drink id</h3><input type="text" name="id"> <br>
         <h3>Drink_type</h3><br> 
         <select name="type" style="width:130px">
             <option >Softdrink </option>
                <option>Alcolic Drinks</option>
                                     
                </select><br>
            
                <h3>Drink_name</h3><input type="text" name="name"><br>
                 <h3>Drink_price</h3><input type="text" name="price"><br>
                <br><br>
          <img src="../../../image/insert.png" style="width: 40px;height: 40px"/> <input type="submit" name="submit" value="save">
            
     </form>
             
          </body>
           </html>