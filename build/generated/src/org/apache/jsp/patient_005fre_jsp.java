package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Dbcon.DbConnection;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class patient_005fre_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!doctype html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <!--<link rel=\"stylesheet\" href=\"css/lo1.css\">-->\n");
      out.write("    <script src=\"js/index.js\"></script>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>CDA Generation and Integration</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/reset.css\" type=\"text/css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/styles.css\" type=\"text/css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/main.css\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/slider.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/superfish.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/custom.js\"></script>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, minimum-scale=1.0, maximum-scale=1.0\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"container\" class=\"width\">\n");
      out.write("\n");
      out.write("    <header> \n");
      out.write("\t<div class=\"width\"><br>\n");
      out.write("\n");
      out.write("            <h3><font style=\"color: white\">CDA Generation and Integration for Health Information <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exchange Based on Cloud Computing System</font></h3>\n");
      out.write("\n");
      out.write("\t\t<nav>\n");
      out.write("\t      ");
      out.write("\t\t\n");
      out.write("    \t\t\t<ul class=\"sf-menu dropdown\">\n");
      out.write("                                <li class=\"selected\"><a href=\"hos_b_home.jsp\">Hospital B Home</a></li>\n");
      out.write("            \t\t\t<li><a href=\"report_b.jsp\">Report Upload</a></li>\n");
      out.write("\t\t\t\t<li><a href=\"view_rb.jsp\">View Report</a></li>\n");
      out.write("                                <li><a href=\"index.jsp\">logout</a></li>\n");
      out.write("       \t\t\t</ul>\n");
      out.write("\n");
      out.write("                    ");
      out.write("\t\t\n");
      out.write("\t\t\t<div class=\"clear\"></div>\n");
      out.write("    \t\t</nav>\n");
      out.write("       \t</div>\n");
      out.write("\n");
      out.write("\t<div class=\"clear\"></div>\n");
      out.write("\n");
      out.write("       \n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div id=\"intro\">\n");
      out.write("\n");
      out.write("\t<div class=\"width\">\n");
      out.write("      \n");
      out.write("\t\t<div class=\"intro-content\">\n");
      out.write("\t             ");
      out.write("\n");
      out.write(" \n");
      out.write("                 <!-- start body---->\n");
      out.write("   <!-- /.container -->\n");
      out.write("          ");

//                        String uname = session.getAttribute("name").toString();
                        String search = request.getParameter("search");
                        System.out.println("get the search"+search);
                        session.setAttribute("search", search);
                    
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"box\" style=\"height: 400px;\">\n");
      out.write("                    <!--To do you work-->\n");
      out.write("                    <div style=\"border: 1px solid white;height: 350px;border-top-width: 20px;border-bottom-width: 10px\">\n");
      out.write("                        <center><h3>Owner Details</h3></center><br />\n");
      out.write("                        <table border=\"1\" style=\"text-align: center;margin-left: 320px\">\n");
      out.write("                            <tr>\n");
      out.write("\n");
      out.write("                                <th style=\"text-align: center;width: 100px;\">Categories</th>\n");
      out.write("                                <th style=\"text-align: center;width: 100px;\">Report</th>\n");
      out.write("                                <th style=\"text-align: center; width: 100px;\">Request</th>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                               ");
int fid=0;
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from patient_details where pcategories LIKE '%" + search + "%'");
                                    if (rs.next()) {
                                     session.setAttribute("Spcategories", rs.getString("pcategories"));
                                    session.setAttribute("Sfilename", rs.getString("filename"));
                                    session.setAttribute("Ssecret_key", rs.getString("master_key"));
                                    session.setAttribute("Spatient_id", rs.getString("patient_id"));
//                                  
                                      	do{		
                                      
                            
      out.write("\n");
      out.write("    \n");
      out.write("                                <td>");
      out.print(rs.getString("pcategories"));
      out.write("</td>     \n");
      out.write("                                <td>");
      out.print(rs.getString("filename"));
      out.write("</td>  \n");
      out.write("                                <td> <a href=\"re_request.jsp?");
      out.print(rs.getString("id"));
      out.write("\"><font style=\"color: green\">Send</a></font> </td>   \n");
      out.write("                                        </tr>\n");
      out.write("                                     ");
 }while (rs.next());
      out.write("\n");
      out.write("                                     \n");
      out.write("                                     ");
 }else{ 
                                        response.sendRedirect("other2.jsp");
                                        
   
      out.write("   \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                      ");

                                   
                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }
                                                                       
                                
      out.write("\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- end body---->\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                     ");
      out.write("\n");
      out.write("               </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("    <div id=\"body\" class=\"width\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<section id=\"content\" class=\"two-column with-right-sidebar\">\n");
      out.write("\n");
      out.write("\t    \n");
      out.write("\t\t\n");
      out.write("        </section>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("    \t<div class=\"clear\"></div>\n");
      out.write("    </div>\n");
      out.write("    <footer class=\"width\">\n");
      out.write("\n");
      out.write("        <div class=\"footer-bottom\">\n");
      out.write("            <p>&copy; Jpinfotech 2016.</p>\n");
      out.write("         </div>\n");
      out.write("    </footer>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
