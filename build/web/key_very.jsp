<%-- 
    Document   : key_very
    Created on : Jun 14, 2016, 3:46:28 PM
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
           if (request.getParameter("msgg") != null) {
        %>
        <script>alert('Secret key Not Matched');</script>
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
            			<li><a href="patient_rep.jsp">Patient Information</a></li>
                                <li class="selected"><a href="key_very.jsp">view Information</a></li>
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
      
		<div class="intro-content"><br>
	         <!--<img src="img/re1.jpg" style="height: 400px; width: 920px" alt=""><br><br>-->
                    <%----- Start body-----%>
 <form action="result1.jsp" method="get" >
       <h5><font style="color: #00A6EB">Secret Key</font></h5><br>
    <input type="password" name="search" placeholder="Secert Key"><br><br>
    <button><a><img src="img/sub1.png"style="width:100px;height:30px;"></a></button>
 </form><br><br><br><br><br><br><br><br>
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


