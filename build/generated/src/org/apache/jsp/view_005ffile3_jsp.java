package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.HashMap;
import com.sun.org.apache.bcel.internal.generic.AALOAD;
import java.util.ArrayList;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import Dbcon.DbConnection;
import algorithm.TrippleDES;

public final class view_005ffile3_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("   \n");
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
      out.write("<!--                                <li><a href=\"hos_a_home.jsp\">Hospital A Home</a></li>\n");
      out.write("            \t\t\t<li><a href=\"report_a.jsp\">Report Upload</a></li>\n");
      out.write("\t\t\t\t<li><a href=\"view_ra.jsp\">View Report</a></li>-->\n");
      out.write("                                <li class=\"selected\"><a href=\"cda_gene.jsp\">Back</a></li>\n");
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
      out.write("\t         <!--<img src=\"img/hosh.jpg\" style=\"height: 400px; width: 920px\" alt=\"\">-->\n");
      out.write("                    ");
      out.write("\n");
      out.write("  <div id=\"content\">\n");
      out.write("          ");

//HttpSession user=request.getSession();
//String uname=user.getAttribute("username").toString();   
//String name=user.getAttribute("name").toString();  
  
String Pemail=request.getQueryString();
String fname=null;

Connection con= DbConnection.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from upload where pmail='"+Pemail+"'");
StringBuffer sb=new StringBuffer();
if(rs.next()){
    
      session.setAttribute("sspatient_id", rs.getString("patient_id"));
       session.setAttribute("sspname", rs.getString("pname"));
        session.setAttribute("ssgender", rs.getString("gender"));
         session.setAttribute("ssage", rs.getString("age"));
          session.setAttribute("sspdob", rs.getString("pdob"));
           session.setAttribute("sspmail", rs.getString("pmail"));
           session.setAttribute("ssdoctor_id", rs.getString("doctor_id"));
         session.setAttribute("ssdoctor_name", rs.getString("doctor_name"));
        session.setAttribute("sspoci", rs.getString("poci"));
       session.setAttribute("ssrfv", rs.getString("rfv"));
      session.setAttribute("ssmedications", rs.getString("medications"));
     session.setAttribute("ssimmunizations", rs.getString("immunizations"));
     
    String Name=rs.getString("pname");
    InputStream is=rs.getAsciiStream("file");
    BufferedReader br=new BufferedReader(new InputStreamReader(is));
    
    String temp=null;
    while((temp=br.readLine())!=null){
            sb.append(temp);
        }
    System.out.println(sb.toString());
    String file=new TrippleDES().decrypt(sb.toString());
//  

      out.write("\n");
      out.write("\n");
      out.write("<h5><font style=\"color: #000\">Hospital_A Report Of: <span style=\"color: blue; text-transform: uppercase\">");
      out.print(Name);
      out.write("</span></font></h5><br>\n");
      out.write("<textarea name=\"content\" style=\"width: 800px;height: 200px;position: relative;left: 50px;\">");
      out.print(file);
      out.write("</textarea>\n");

}

      out.write("\n");
      out.write("<pre>\n");
      out.write("                                                                      \n");
      out.write("</pre>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("       \n");
      out.write("      </div>\n");
      out.write("<div id=\"content\">\n");
      out.write("          ");

//HttpSession user=request.getSession();
//String uname=user.getAttribute("username").toString();   
//String name=user.getAttribute("name").toString();  
  
String Pemaill=request.getQueryString();
String fnamee=null;

Connection conn= DbConnection.getConnection();
Statement stt=conn.createStatement();
ResultSet rtt=stt.executeQuery("select * from uploadb where pmail='"+Pemaill+"'");
StringBuffer sbb=new StringBuffer();
if(rtt.next()){
    
      session.setAttribute("ssspatient_id", rs.getString("patient_id"));
       session.setAttribute("ssspname", rs.getString("pname"));
        session.setAttribute("sssgender", rs.getString("gender"));
         session.setAttribute("sssage", rs.getString("age"));
          session.setAttribute("ssspdob", rs.getString("pdob"));
           session.setAttribute("ssspmail", rs.getString("pmail"));
           session.setAttribute("sssdoctor_id", rs.getString("doctor_id"));
         session.setAttribute("sssdoctor_name", rs.getString("doctor_name"));
        session.setAttribute("ssspoci", rs.getString("poci"));
       session.setAttribute("sssrfv", rs.getString("rfv"));
      session.setAttribute("sssmedications", rs.getString("medications"));
     session.setAttribute("sssimmunizations", rs.getString("immunizations"));
    
    String Name=rtt.getString("pname");
    InputStream is=rtt.getAsciiStream("file");
    BufferedReader br=new BufferedReader(new InputStreamReader(is));
    
    String temp=null;
    while((temp=br.readLine())!=null){
            sbb.append(temp);
        }
    System.out.println(sbb.toString());
    String file=new TrippleDES().decrypt(sbb.toString());
//  

      out.write("\n");
      out.write("\n");
      out.write("<h5><font style=\"color: #000\">Hospital_B Report Of: <span style=\"color: blue; text-transform: uppercase\">");
      out.print(Name);
      out.write("</span></font></h5><br>\n");
      out.write("<textarea name=\"content\" style=\"width: 800px;height: 200px;position: relative;left: 50px;\">");
      out.print(file);
      out.write("</textarea>\n");
      out.write("<br><br><button><a href=\"#\"><img src=\"img/int.jpg\"style=\"width:80px;height:40px;\"></a></button>\n");

}

      out.write("\n");
      out.write("<pre>\n");
      out.write("                                                                      \n");
      out.write("</pre>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("       \n");
      out.write("      </div>\n");
      out.write("<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>      </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>\n");
      out.write("\n");
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
