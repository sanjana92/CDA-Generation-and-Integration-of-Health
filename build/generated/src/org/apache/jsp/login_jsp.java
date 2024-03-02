package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.UUID;
import java.security.SecureRandom;
import java.sql.ResultSet;
import Dbcon.DbConnection;
import java.sql.Statement;
import java.sql.Connection;
import java.util.Random;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    Connection con = null;
    Statement st = null;
   ResultSet rs = null;

    
      String name = request.getParameter("uname");
       String pass = request.getParameter("pass");
        String Eamil = request.getParameter("email");
         String Mobile = request.getParameter("mobile");
        String State = request.getParameter("state");
       String Country = request.getParameter("country");

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
                    rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + pass + "' AND role='User'");
                    if (rs.next()) {
                        session.setAttribute("ssmail", rs.getString("email"));
                        session.setAttribute("ssuname", rs.getString("uname"));
                        session.setAttribute("ssstate", rs.getString("state"));
                        session.setAttribute("sscountry", rs.getString("country"));
                        
                        response.sendRedirect("user_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("user.jsp?msgg=failed");
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

                response.sendRedirect("user_login.jsp?rgi=success");
                } else {
                     response.sendRedirect("user_reg.jsp?msgg=failed");
                 }
                  } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 4:

              try {
                 con = DbConnection.getConnection();
                 st = con.createStatement();
            int i = st.executeUpdate("insert into reg(name, pass, email, mob, state, country, role) values ('" + name + "','" + pass + "','" + Eamil + "','" + Mobile + "','" + State + "','" + Country + "','" + Doctor + "')");                                           
                if (i != 0) {

                response.sendRedirect("doc_login.jsp?rgi=success");
                } else {
                     response.sendRedirect("doc_reg.jsp?msgg=failed");
                 }
                  } catch (Exception ex) {
                    ex.printStackTrace();
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


    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
