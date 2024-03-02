<%-- 
    Document   : result1
    Created on : Jun 16, 2016, 10:48:34 AM
    Author     : java4
--%>

<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!doctype html>
<html>
<head>
    <!--<link rel="stylesheet" href="css/lo1.css">-->
    <link rel="stylesheet" href="css/lo2.css">
    <script src="js/index.js"></script>
<link rel="stylesheet" href="css/style1.css">   
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

			
				<li class="selected"><a href="key_very.jsp">Back</a></li>
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
	         <!--<img src="img/admin2.jpg" style="height: 400px; width: 920px" alt="">-->
                   <!-- start body---->
   <!-- /.container -->
          <%
//                        String uname = session.getAttribute("name").toString();
                        String search = request.getParameter("search");
                        System.out.println("get the search"+search);
                        session.setAttribute("search", search);
                    %>
                          
                          
                               <%int fid=0;
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from integrate where secret_key LIKE '" + search + "'");
                                    if (rs.next()) {
                String Pid=rs.getString("patient_id");
                 String Pname=rs.getString("pname");
                  String gender=rs.getString("gender");
                   String age=rs.getString("age");
                    String pdob=rs.getString("pdob");
                     String pmail=rs.getString("pmail");
                      String doctor_id=rs.getString("doctor_id");
                       String doctor_name=rs.getString("doctor_name");
                       String poci=rs.getString("poci");
                      String rfv=rs.getString("rfv");
                     String medications=rs.getString("medications");
                    String immunizations=rs.getString("immunizations");
                   String spoci=rs.getString("spoci");
                  String srfv=rs.getString("srfv");
                 String smedications=rs.getString("smedications");
                String simmunizations=rs.getString("simmunizations");
                                      			
                                    do{  
                            %>
                            <div>
                               <form action="Upload_ha" method="post" enctype="multipart/form-data">
       <h5><font style="color: #00A6EB">Patient Information</font></h5>
       <input type="text" value="<%=Pid%>" readonly="" placeholder="Patient ID">
       <input type="text" value="<%=Pname%>" readonly="" placeholder="Patient Name"><br><br>
       <input type="text" value="<%=gender%>" readonly="" placeholder="Gender">
       <input type="text" value="<%=age%>" readonly="" placeholder="Patient Age"><br><br>
       <input type="text" value="<%=pdob%>" readonly="" placeholder="Patient DOB">
       <input type="email" value="<%=pmail%>" readonly="" placeholder="Email"><br><br>
     <h5><font style="color: #00A6EB">Doctor Information</font></h5>
     <input type="text" value="<%=doctor_id%>" readonly="" placeholder="Doctor ID">
     <input type="text" value="<%=doctor_name%>" readonly="" placeholder="Doctor Name"><br><br>
     <h5><font style="color: #00A6EB">Clinical Information</font></h5>
     Patient information::<br>
     <textarea rows="4" readonly="" cols="45"><%=poci%></textarea><br><br>
     Reason for Visit:<br>
     <textarea rows="4" readonly="" cols="45"><%=rfv%></textarea><br><br>
    Medications:<br>
    <textarea rows="4" readonly="" cols="45"><%=medications%></textarea><br><br>
    Immunizations:<br>
    <textarea rows="4" readonly="" cols="45"><%=immunizations%></textarea><br><br>
     Patient information:<br>
     <textarea rows="4" readonly="" cols="45"><%=spoci%></textarea><br><br>
     Reason for Visit:<br>
     <textarea rows="4" readonly="" cols="45"><%=srfv%></textarea><br><br>
    Medications:<br>
    <textarea rows="4" readonly="" cols="45"><%=smedications%></textarea><br><br>
    Immunizations:<br>
    <textarea rows="4" readonly="" cols="45"><%=simmunizations%></textarea><br><br>

  </form>
                            </div>          
                                     <% }while (rs.next());%>
                                     
                                     <% }else{ 
                                        response.sendRedirect("key_very.jsp?msgg=failed");
                                        
   %>   
                                        <%
                                  
                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }
                                                                       
                                %>




<!-- end body---->
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
