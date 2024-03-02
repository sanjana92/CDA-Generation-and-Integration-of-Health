<%-- 
    Document   : update
    Created on : Jun 16, 2016, 5:45:57 PM
    Author     : java4
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>
<%
  int  id=(Integer)session.getAttribute("thSid");
                Connection con = DbConnection.getConnection();
                Statement st =con.createStatement();

String Status = "Yes";

    int i = st.executeUpdate("update request set status='" + Status + "' where id = '" + id + "'");
    if (i != 0) {
        response.sendRedirect("doc_req.jsp?msg =Secret_key_sent_to_Your_Email");
    } else {
        response.sendRedirect("doc_req.jsp? msg = Error");
    }
%>
