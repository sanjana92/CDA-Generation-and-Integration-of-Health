<%-- 
    Document   : report_a.jsp
    Created on : Jun 11, 2016, 11:35:30 AM
    Author     : java4
--%>

<!doctype html>
<html>
<head>
<!--    <link rel="stylesheet" href="css/lo1.css">-->
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
        <script>alert('File Upload to cloud');</script>
        <%
            }
        %>
                        <%
           if (request.getParameter("msgg") != null) {
        %>
        <script>alert('This File Already Uploaded');</script>
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
                                <li><a href="hos_a_home.jsp">Hospital A Home</a></li>
            			<li class="selected"><a href="report_a.jsp">Report Upload</a></li>
				<li><a href="view_ra.jsp">View Report</a></li>
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
	         <img src="img/arp.jpg" style="height: 400px; width: 920px" alt=""><br><br>
                 
                    <%----- Start body-----%>

   <form action="Upload_ha" method="post" enctype="multipart/form-data">
       <h5><font style="color: #00A6EB">Patient Information</font></h5>
    <input type="text" name="pid" placeholder="Patient ID">
    <input type="text" name="pname" placeholder="Patient Name"><br><br>
    <input type="text" name="pgender" placeholder="Gender">
    <input type="text" name="page" placeholder="Patient Age"><br><br>
    <input type="date" name="pdob" placeholder="Patient DOB">
    <input type="email" name="pemail" placeholder="Email"><br><br>
     <h5><font style="color: #00A6EB">Doctor Information</font></h5>
    <input type="text" name="did" placeholder="Doctor ID">
    <input type="text" name="dname" placeholder="Doctor Name"><br><br>
     <h5><font style="color: #00A6EB">Clinical Information</font></h5>
    <input type="phone" name="poci" placeholder="Patient Information">
    <input type="text" name="rfv" placeholder="Reason for Visit"><br><br>
    <input type="text" name="medications" placeholder="Medications">
    <input type="text" name="immunizations" placeholder="Immunizations"><br><br>
    <button><a><img src="img/sub1.png"style="width:100px;height:30px;"></a></button>
  </form>

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
