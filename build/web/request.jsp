<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>

<%@ page import="Dbcon.DbConnection"%>





  
       <% 
        try
                {
				
//           int a1 =(Integer)(session.getAttribute( "id" ));
                  String  User_Name=(String)session.getAttribute("ssname");
                   String  Email=(String)session.getAttribute("ssemail");
                    String  State=(String)session.getAttribute("ssstate");
                     String  Country=(String)session.getAttribute("sscountry");
                     
                      String  sspatient_id=(String)session.getAttribute("sspatient_id");
                      String  sspname=(String)session.getAttribute("sspname");
                     String  ssdoctor_id=(String)session.getAttribute("ssdoctor_id");
                    String  ssdoctor_name=(String)session.getAttribute("ssdoctor_name"); 
                     String  secret_key=(String)session.getAttribute("sssecret_key"); 
                   String  Status="No";  
       System.out.println("Request is activated"+Email+State+Country+ssdoctor_id+sspname+sspatient_id+ssdoctor_name+Status+secret_key);
	  	  
	 
       Connection con= DbConnection.getConnection();
        Statement st=con.createStatement();
		
        
            String sql="insert into request(user_name, email, state, country, sspatient_id, sspname, ssdoctor_id, ssdoctor_name, secret_key, status, role) values ('"+User_Name+"','"+Email+"','"+State+"','"+Country+"','"+sspatient_id+"','"+sspname+"','"+ssdoctor_id+"','"+ssdoctor_name+"','"+secret_key+"','"+Status+"','doctor')";
		
        int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("patient_re.jsp?msg=Request_send_Successfully");
	
		}
				else{
		response.sendRedirect("patient_re.jsp?msgg=faild");
		
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>   