<%-- 
    Document   : view_file2
    Created on : Jun 14, 2016, 10:41:03 AM
    Author     : java4
--%>

<%@page import="algorithm.TrippleDES"%>
<!doctype html>
<%@page import="java.util.HashMap"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="algorithm.Decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>
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
                                <li class="selected"><a href="view_rb.jsp">Back</a></li>
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
  
String id=request.getQueryString();
String fname=null;

Connection con= DbConnection.getConnection();
Statement st=con.createStatement();
ResultSet rt=st.executeQuery("select * from uploadb where id='"+id+"'");
StringBuffer sb=new StringBuffer();
if(rt.next()){
    String Name=rt.getString("pname");
    InputStream is=rt.getAsciiStream("file");
    BufferedReader br=new BufferedReader(new InputStreamReader(is));
    
    String temp=null;
    while((temp=br.readLine())!=null){
            sb.append(temp);
        }
    System.out.println(sb.toString());
    String file=new TrippleDES().decrypt(sb.toString());
//  
%>

<h5><font style="color: #000">Report Of: <span style="color: blue; text-transform: uppercase"><%=Name%></span></font></h5><br>
<textarea name="content" style="width: 800px;height: 200px;position: relative;left: 50px;"><%=file%></textarea>
<%
}
%>
<pre>
                                                                      
</pre>
</form>

       
      </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>      </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

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
