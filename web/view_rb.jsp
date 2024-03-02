<%-- 
    Document   : view_rb
    Created on : Jun 11, 2016, 11:59:12 AM
    Author     : java4
--%>

<!doctype html>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
    <!--<link rel="stylesheet" href="css/lo1.css">-->
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
                                <li class="selected"><a href="hos_b_home.jsp">Hospital B Home</a></li>
            			<li><a href="report_b.jsp">Report Upload</a></li>
				<li><a href="view_rb.jsp">View Report</a></li>
                                <li><a href="index.jsp">logout</a></li>
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
	             <%----- Start body-----%>
 
                    <!-- start body---->
   <!-- /.container -->
 

        <div class="container">
            <div class="row">
                <div class="box" style="height: 400px;">
                    <!--To do you work-->
<!--                    <div style="border: 1px solid white;height: 350px;border-top-width: 20px;border-bottom-width: 10px">-->
<center><h5><font style=" color: #0092D1 ">Patient Report</font></h5></center><br />
                        <table border="1" style="text-align: center;margin-left: 0px">
                            <tr>
                                <th style="text-align: center;width: 300px;">User ID</th>
                                <th style="text-align: center;width: 300px;">Patient Name</th>
                                  <th style="text-align: center;width: 300px;">Email</th>
                                <th style="text-align: center;width: 300px;">Date Of Birth</th>
                                <th style="text-align: center;width: 300px;">View</th>
                            </tr>
                            <tr>
                                <%
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        con = DbConnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from uploadb");
                                        while(rs.next())
                                            
                                        {%>
                                        <td><%=rs.getString("id")%></td>     
                                        <td><%=rs.getString("pname")%></td>     
                                           <td><%=rs.getString("pmail")%></td>
                                        <td><%=rs.getString("pdob")%></td>
                   <td> <a href="view_file2.jsp?<%=rs.getString("id")%>"><font style="color: green">View</a></font> </td>
        
                                        <tr />
                                        <%
                                      
                                        
                                        } 
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container -->



<!-- end body---->
                     
                     
                     
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
