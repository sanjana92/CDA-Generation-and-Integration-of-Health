<%-- 
    Document   : doc_home
    Created on : Jun 14, 2016, 2:53:28 PM
    Author     : java4
--%>

<!doctype html>
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
                        <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Login Succesfully');</script>
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
                                <li class="selected"><a href="doc_home.jsp">Doctor Home</a></li>
            			<li><a href="patient_re.jsp">Patient Information</a></li>
                                <li><a href="vpi.jsp">view Information</a></li>
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
	         <img src="img/hosh.jpg" style="height: 400px; width: 920px" alt="">
                    <%----- Start body-----%>
 
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


