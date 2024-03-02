<%-- 
    Document   : loginaction
    Created on : Feb 23, 2016, 3:43:53 PM
    Author     : java4
--%>

<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    Connection con = null;
    Statement st = null;
   ResultSet rs = null;

    
      String name = request.getParameter("uname");
       String pass = request.getParameter("pass");
        String Eamil = request.getParameter("email");
         String Mobile = request.getParameter("mobile");
        String State = request.getParameter("state");
       String Country = request.getParameter("country");
int in=1;
                    System.out.println("User Details"+Mobile+State+Eamil+name+pass+Country);
  String User = "User"; 
  String Doctor = "Doctor";
  
     int status = Integer.parseInt(request.getParameter("status"));
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + pass + "' AND role='User'");
                    if (rs.next()) {
                        session.setAttribute("sssname", rs.getString("name"));
                        session.setAttribute("sssemail", rs.getString("email"));
                        session.setAttribute("sssstate", rs.getString("state"));
                        session.setAttribute("ssscountry", rs.getString("country"));
                        response.sendRedirect("user_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("user_login.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 2:
                try {
                    rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + pass + "' AND role='Doctor'");
                    if (rs.next()) {
                        session.setAttribute("ssname", rs.getString("name"));
                        session.setAttribute("ssemail", rs.getString("email"));
                        session.setAttribute("ssstate", rs.getString("state"));
                        session.setAttribute("sscountry", rs.getString("country"));
                        
                        response.sendRedirect("doc_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("doc_login.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
                
                case 3:

              try {
                 con = DbConnection.getConnection();
                 st = con.createStatement();
            int i = st.executeUpdate("insert into reg(name, pass, email, mob, state, country, role) values ('" + name + "','" + pass + "','" + Eamil + "','" + Mobile + "','" + State + "','" + Country + "','" + User + "')");                                           
                if (i != 0) {

                response.sendRedirect("user_login.jsp?msg=success");
                } else {
                     response.sendRedirect("user_reg.jsp?msgg=failed");
                 }
                  } catch (Exception ex) {
                  response.sendRedirect("user_reg.jsp?msggg=failed");
                }
                break;

            case 4:

              try {
                 con = DbConnection.getConnection();
                 st = con.createStatement();
            int i = st.executeUpdate("insert into reg(name, pass, email, mob, state, country, role) values ('" + name + "','" + pass + "','" + Eamil + "','" + Mobile + "','" + State + "','" + Country + "','" + Doctor + "')");                                           
                if (i != 0) {

                response.sendRedirect("doc_login.jsp?msg=success");
                } else {
                     response.sendRedirect("doc_reg.jsp?msgg=failed");
                 }
                  } catch (Exception ex) {
                    //ex.printStackTrace();
                      response.sendRedirect("doc_reg.jsp?msggg=failed");
                }
                break;
  
                case 5:
             
                try {
                    rs = st.executeQuery("select * from patient_details where secret_key='" + pass + "'");
                    if (rs.next()) {
                        session.setAttribute("SSmail", rs.getString("email"));
                        session.setAttribute("SSname", rs.getString("uname"));
                                             
                        response.sendRedirect("user_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("search_down.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                               
                break;
                case 6:
                try {
                    if (name.equalsIgnoreCase("cloud") && pass.equalsIgnoreCase("cloud")) {
                        response.sendRedirect("cloud_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("cloud.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            
            case 7:
                try {
                    if (name.equalsIgnoreCase("Admin") && pass.equalsIgnoreCase("Admin")) {
                        response.sendRedirect("admin_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("Admin.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
                 case 8:
                try {
                    if (name.equalsIgnoreCase("hospitala") && pass.equalsIgnoreCase("hospitala")) {
                        response.sendRedirect("hos_a_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("hos_a.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
                 case 9:
                try {
                    if (name.equalsIgnoreCase("hospitalb") && pass.equalsIgnoreCase("hospitalb")) {
                        response.sendRedirect("hos_b_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("hos_b.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
             
            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>