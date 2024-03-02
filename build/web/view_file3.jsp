<%-- 
    Document   : view_file3
    Created on : Jun 14, 2016, 11:10:52 AM
    Author     : java4
--%>

<!doctype html>
<%@page import="java.util.HashMap"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="algorithm.TrippleDES"%>
<%@page import="XML.Upload"%>
<html>
<head>
   
    <script src="js/index.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CDA Generation and Integration</title>
<link rel="stylesheet" href="css/reset.css" type="text/css" />
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<link rel="stylesheet" href="css/main.css" type="text/css" />

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>
<body>
<div id="container" class="width">

    <header> 
	<div class="width"><br>

            <h3><font style="color: white">CDA Generation and Integration for Health Information <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exchange Based on Cloud Computing System</font></h3>

		<nav>
	      <%---menu start ---%>		
    			<ul class="sf-menu dropdown">
<!--                                <li><a href="hos_a_home.jsp">Hospital A Home</a></li>
            			<li><a href="report_a.jsp">Report Upload</a></li>
				<li><a href="view_ra.jsp">View Report</a></li>-->
                                <li class="selected"><a href="cda_gene.jsp">Back</a></li>
       			</ul>

                    <%---menu end ---%>		
			<div class="clear"></div>
    		</nav>
       	</div>

	<div class="clear"></div>

       
    </header>


    <div id="intro">

	<div class="width">
      
		<div class="intro-content">
	         <!--<img src="img/hosh.jpg" style="height: 400px; width: 920px" alt="">-->
                    <%----- Start body-----%>
  <div id="content">
          <%
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
%>

<h5><font style="color: #000">Hospital_A Report Of: <span style="color: blue; text-transform: uppercase"><%=Name%></span></font></h5><br>
<textarea name="content" style="width: 800px;height: 200px;position: relative;left: 50px;"><%=file%></textarea>
<%
}
%>
<pre>
                                                                      
</pre>
</form>

       
      </div>
<div id="content">
          <%
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
%>

<h5><font style="color: #000">Hospital_B Report Of: <span style="color: blue; text-transform: uppercase"><%=Name%></span></font></h5><br>
<textarea name="content" style="width: 800px;height: 200px;position: relative;left: 50px;"><%=file%></textarea>
<br><br><button><a href="Upload"><img src="img/int.jpg"style="width:80px;height:40px;"></a></button>
<%
}
%>
<pre>
                                                                      
</pre>
</form>

       
      </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>      </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

                     <%----- Start body-----%>
               </div>
                
            </div>
            

	</div>

    <div id="body" class="width">



		<section id="content" class="two-column with-right-sidebar">

	    
		
        </section>
        
       
    	<div class="clear"></div>
    </div>
    <footer class="width">

        <div class="footer-bottom">
            <p>&copy; Jpinfotech 2016.</p>
         </div>
    </footer>
</div>
</body>
</html>

