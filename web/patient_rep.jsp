<%--
    Document   : patient_rep
    Created on : Jun 14, 2016, 3:44:54 PM
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
                    <%
           if (request.getParameter("msg") != null) {
        %>
        <script>alert('Request Sent Successfully');</script>
        <%
            }
        %>
                        <%
           if (request.getParameter("msgg") != null) {
        %>
        <script>alert('Request Sent Failed');</script>
        <%
            }
        %>
<div id="container" class="width">

    <header>
	<div class="width"><br>

            <h3><font style="color: white">CDA Generation and Integration for Health Information <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exchange Based on Cloud Computing System</font></h3>

		<nav>
	      <%---menu start ---%>
    			<ul class="sf-menu dropdown">
                                <li><a href="user_home.jsp">User Home</a></li>
            			<li class="selected"><a href="patient_rep.jsp">Patient Information</a></li>
                                <li><a href="key_very.jsp">view Information</a></li>
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
<center><h5><font style="color: #0092D1 ">Patient Report</font></h5></center><br />
                        <table border="1" style="text-align: center;margin-left: 0px">
                            <tr>
                                <th style="text-align: center;width: 300px;">Patient ID</th>
                                <th style="text-align: center;width: 300px;">Patient Name</th>
                                <th style="text-align: center;width: 300px;">EMail</th>
                                <th style="text-align: center;width: 300px;">Doctor ID</th>
                                <th style="text-align: center;width: 300px;">Doctor Name</th>
                                <th style="text-align: center;width: 300px;">Request</th>
                            </tr>
                            <tr>
                                <%
                                    Connection con = null;
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        con = DbConnection.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from integrate");
                                        while(rs.next()){
                                           session.setAttribute("sspatient_id", rs.getString("patient_id"));
                                           session.setAttribute("sspname", rs.getString("pname"));
                                           session.setAttribute("ssdoctor_id", rs.getString("doctor_id"));
                                           session.setAttribute("ssdoctor_name", rs.getString("doctor_name"));
                                           session.setAttribute("sssecret_key", rs.getString("secret_key"));
                                        %>
                                        <td><%=rs.getString("patient_id")%></td>
                                        <td><%=rs.getString("pname")%></td>
                                        <td><%=rs.getString("pmail")%></td>
                                        <td><%=rs.getString("doctor_id")%></td>
                                        <td><%=rs.getString("doctor_name")%></td>
                   <td> <a href="request1.jsp?<%=rs.getString("pmail")%>"><font style="color: green">Send</a></font> </td>

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
        </div><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
