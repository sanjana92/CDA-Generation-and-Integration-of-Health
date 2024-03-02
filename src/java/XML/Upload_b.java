package XML;

import Dbcon.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import javax.servlet.http.HttpSession;
 
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import com.oreilly.servlet.MultipartRequest; 
import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import algorithm.TrippleDES;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.FileWriter;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
/**
 *
 * @author java4
 */
public class Upload_b extends HttpServlet {
final String filepath="C:/";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        MultipartRequest m=new MultipartRequest(request,filepath);
          String DI="DOCUMENT_INFIRMATION";
           DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    Date date = new Date();
             String time= dateFormat.format(date); 
              String PI="PATIENT_INFORMATION";
               String pid = m.getParameter("pid");
                String pname = m.getParameter("pname");
                 String gender = m.getParameter("pgender");
                  String age = m.getParameter("page");
                   String pdob = m.getParameter("pdob");
                    String pmail = m.getParameter("pemail");
                   String DIF="DOCTOR_INFORMATION";
                  String DID = m.getParameter("did");
                 String DNAME = m.getParameter("dname");
                String POCI = m.getParameter("poci"); 
               String RFV = m.getParameter("rfv");
              String Medications = m.getParameter("medications");  
             String Immunizations = m.getParameter("immunizations");  
            System.out.println("--------->>>>"+pid+pname+gender+age+pdob+pmail+DID+DNAME+POCI+RFV+Medications+Immunizations);
        HttpSession session = request.getSession(true);
        Object sss = session.getAttribute("MyAttribute");
        DocumentBuilderFactory icFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder icBuilder;
        try {
            icBuilder = icFactory.newDocumentBuilder();
            Document doc = icBuilder.newDocument();
            Element mainRootElement = doc.createElementNS("http://www.Hospital_B.com", "Companies");
            doc.appendChild(mainRootElement);
            // append child elements to root element
            mainRootElement.appendChild(getCompany(doc, "1", "DOCUMENT_INFIRMATION", time, "PATIENT_INFORMATION", pid, pname, gender, age, pdob, pmail, "DOCTOR_INFORMATION", DID, DNAME, POCI, RFV, Medications, Immunizations));
            // output DOM XML to console 
            Transformer transformer = TransformerFactory.newInstance().newTransformer();
            transformer.setOutputProperty(OutputKeys.INDENT, "yes"); 
            DOMSource source = new DOMSource(doc);
            StreamResult console = new StreamResult(new File("C:\\XML/"+pname+".xml/"));
            transformer.transform(source, console); 
            // file reading in BR
        BufferedReader br=new BufferedReader(new FileReader("C:\\XML/"+pname+".xml/"));
        StringBuffer sb=new StringBuffer();
        String temp=null;
        while(( temp=br.readLine())!=null){
               sb.append(temp);              
           }   
          
           TrippleDES e=new TrippleDES();
           String TrippleDES=e.encrypt(sb.toString());
           System.out.println("new file"+TrippleDES);
          
          
            System.out.println(new File("C:\\XML/"+pname+".xml/"));
            Connection con= DbConnection.getConnection();
            Statement st=con.createStatement();
        int i=st.executeUpdate("insert into uploadb(doc_info,file,time,patient_info,patient_id,pname,gender,age,pdob,pmail,doctor_info,doctor_id,doctor_name,poci,rfv,medications,immunizations,secret_key)values('"+DI+"','"+TrippleDES+"','"+time+"','"+PI+"','"+pid+"','"+pname+"','"+gender+"','"+age+"','"+pdob+"','"+pmail+"','"+DIF+"','"+DID+"','"+DNAME+"','"+POCI+"','"+RFV+"','"+Medications+"','"+Immunizations+"','"+Immunizations+"')");
        if(i!=0){
                   // out.println("success");
                    response.sendRedirect("report_b.jsp?msg='upload_Successfully'");
                    
                }
                else{
                    out.println("error while uploading additional informations");
                }
        } catch (Exception e) {
            e.printStackTrace();
             response.sendRedirect("report_b.jsp?msgg='This_file_Already_uploaded'");
        }
    }
 
    private static Node getCompany(Document doc, String id, String DocumentInformation, String CreationTime, String fi, String pid, String pname, String pgender, String page, String pdop, String pemail, String DI, String did, String dname, String POCI, String RFV, String Medications, String Immunizations) {
        Element company = doc.createElement("HOSPITAL_B");
        company.setAttribute("id", id);
        company.appendChild(getCompanyElements(doc, company, "Document_Information", DocumentInformation));
        company.appendChild(getCompanyElements(doc, company, "Creation_Time", CreationTime));
        company.appendChild(getCompanyElements(doc, company, "Patient_Information", fi));
        company.appendChild(getCompanyElements(doc, company, "Patient_ID", pid));
        company.appendChild(getCompanyElements(doc, company, "Patient_Name", pname));
        company.appendChild(getCompanyElements(doc, company, "Patient_Gender", pgender));
        company.appendChild(getCompanyElements(doc, company, "Patient_Gender", page));
        company.appendChild(getCompanyElements(doc, company, "Patient_DateOfBirth", pdop));
        company.appendChild(getCompanyElements(doc, company, "Patient_Email", pemail));
                company.appendChild(getCompanyElements(doc, company, "Doctor_Information", DI));
                company.appendChild(getCompanyElements(doc, company, "Doctor_ID", did));
                company.appendChild(getCompanyElements(doc, company, "Doctor_Name", dname));
                      company.appendChild(getCompanyElements(doc, company, "Provider_office_contact_Information", POCI));
                       company.appendChild(getCompanyElements(doc, company, "Reason_for_Visit", RFV));
                        company.appendChild(getCompanyElements(doc, company, "Medications", Medications));
                         company.appendChild(getCompanyElements(doc, company, "Immunizations", Immunizations));
        return company;
    }
 
    // utility method to create text node
    private static Node getCompanyElements(Document doc, Element element, String name, String value) {
        Element node = doc.createElement(name);
        node.appendChild(doc.createTextNode(value));
        
        return node;
    
}
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
