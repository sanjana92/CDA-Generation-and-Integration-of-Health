<%-- 
    Document   : mail1
    Created on : Jun 16, 2016, 6:09:26 PM
    Author     : java4
--%>

<%@page import="Dbcon.mail"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@ page import ="java.sql.*" %>
<%
{
   String url = "jdbc:mysql://localhost:3306/health_information";
        String user = "root";
        String password = "root";
        int id=Integer.parseInt(request.getQueryString());
        System.out.println("id get successfully"+id);
         session.setAttribute( "thSid", id );
            Connection conn = DriverManager.getConnection(url, user, password);
           
            
            String sql = "Select *  from request where id = '" + id + "' ";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            if(result.next()) {
              String name =result.getString("user_name");   
             String key =result.getString("secret_key");
            String email =result.getString("email");
            session.setAttribute( "ssEmail", email );  
             String msg ="Secret Key : "+key ;
             session.setAttribute( "Key", key );  
                      System.out.println("uour randome string"+msg);
            mail m = new mail();
            m.secretMail(msg, name, email);
           
           response.sendRedirect("update1.jsp");
     }else{
           response.sendRedirect("user_req.jsp");
     }
     }
%>

