
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
import java.security.SecureRandom;
import java.util.Random;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import Dbcon.Ftpcon;
import java.sql.Blob;
import java.io.File;
/**
 *
 * @author java4
 */
public class Upload extends HttpServlet {
final String filea="C:/";
File file;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      
          String DI="DOCUMENT_INFIRMATION";
           DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    Date date = new Date();
             String time= dateFormat.format(date); 
              String PI="PATIENT_INFORMATION";
             
                   String DIF="DOCTOR_INFORMATION";
                
        HttpSession session = request.getSession(true);
        String sspatient_id = (String) session.getAttribute("sspatient_id");
         String sspname = (String) session.getAttribute("sspname");
          String ssgender = (String) session.getAttribute("ssgender");
           String ssage = (String) session.getAttribute("ssage");
            String sspdob = (String) session.getAttribute("sspdob");
             String sspmail = (String) session.getAttribute("sspmail");
              String ssdoctor_id = (String) session.getAttribute("ssdoctor_id");
               String ssdoctor_name = (String) session.getAttribute("ssdoctor_name");
                String sspoci = (String) session.getAttribute("sspoci");
                 String ssrfv = (String) session.getAttribute("ssrfv");
                  String ssmedications = (String) session.getAttribute("ssmedications");
                   String ssimmunizations = (String) session.getAttribute("ssimmunizations");
                      System.out.println();
                    Object ssspatient_id = (String) session.getAttribute("ssspatient_id");
                   Object ssspname = (String) session.getAttribute("ssspname");
                  Object sssgender = (String) session.getAttribute("sssgender");
                 Object sssage = (String) session.getAttribute("sssage");
                Object ssspdob = (String) session.getAttribute("ssspdob");
               Object ssspmail = (String) session.getAttribute("ssspmail");
              Object sssdoctor_id = (String) session.getAttribute("sssdoctor_id");
             Object sssdoctor_name = (String) session.getAttribute("sssdoctor_name");
            Object ssspoci = (String) session.getAttribute("ssspoci");
           Object sssrfv = (String) session.getAttribute("sssrfv");
          Object sssmedications = (String) session.getAttribute("sssmedications");
         Object sssimmunizations = (String) session.getAttribute("ssimmunizations");
        Object sss = session.getAttribute("MyAttribute");
          Random RANDOM = new SecureRandom();
                     int PASSWORD_LENGTH = 8;
                     String letters = "mnbvcxzasddfghjklpoiuytrewq1234567890-=+-*/";
                     
                    String secret_key = "";  
                     for (int i=0; i<PASSWORD_LENGTH; i++)
                 {
                int index = (int)(RANDOM.nextDouble()*letters.length());
              
                secret_key += letters.substring(index, index+1);
                 }
        DocumentBuilderFactory icFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder icBuilder;
        try {
            icBuilder = icFactory.newDocumentBuilder();
            Document doc = icBuilder.newDocument();
            Element mainRootElement = doc.createElementNS("http://www.Hospital_B.com", "Companies");
            doc.appendChild(mainRootElement);
            // append child elements to root element
            mainRootElement.appendChild(getCompany(doc, "1", "DOCUMENT_INFIRMATION", time, "PATIENT_INFORMATION", sspatient_id, sspname, ssgender, ssage, sspdob, sspmail, "DOCTOR_INFORMATION", ssdoctor_id, ssdoctor_name, sspoci, ssrfv, ssmedications, ssimmunizations));
            // output DOM XML to console 
            Transformer transformer = TransformerFactory.newInstance().newTransformer();
            transformer.setOutputProperty(OutputKeys.INDENT, "yes"); 
            DOMSource source = new DOMSource(doc);
            StreamResult console = new StreamResult(new File("C:\\XML/"+sspname+".xml/"));
            transformer.transform(source, console); 
            // file reading in BR
        BufferedReader br=new BufferedReader(new FileReader("C:\\XML/"+sspname+".xml/"));
        StringBuffer sb=new StringBuffer();
        String temp=null;
        while(( temp=br.readLine())!=null){
               sb.append(temp);              
           }   
          
           TrippleDES en=new TrippleDES();
           String TrippleDES=en.encrypt(sb.toString());
           System.out.println("new file--->>>>>>>"+TrippleDES);
            FileWriter fw=new FileWriter(new File("C:\\XML/"+sspname+".xml/"));
            fw.write(TrippleDES);
            fw.close();

       
                       
           boolean status=new Ftpcon().upload(new File("C:\\XML/"+sspname+".xml/"));
            if(status){
                
            Connection con= DbConnection.getConnection();
            Statement st=con.createStatement();
       int i=st.executeUpdate("insert into integrate(doc_info,file,time,patient_info,patient_id,pname,gender,age,pdob,pmail,doctor_info,doctor_id,doctor_name,poci,rfv,medications,immunizations,spatient_info,spatient_id,spname,sgender,sage,spdob,spmail,sdoctor_info,sdoctor_id,sdoctor_name,spoci,srfv,smedications,simmunizations,secret_key)values('"+DI+"','"+TrippleDES+"','"+time+"','"+PI+"','"+sspatient_id+"','"+sspname+"','"+ssgender+"','"+ssage+"','"+sspdob+"','"+sspmail+"','"+DIF+"','"+ssdoctor_id+"','"+ssdoctor_name+"','"+sspoci+"','"+ssrfv+"','"+ssmedications+"','"+ssimmunizations+"','"+PI+"','"+ssspatient_id+"','"+ssspname+"','"+sssgender+"','"+sssage+"','"+ssspdob+"','"+ssspmail+"','"+DIF+"','"+sssdoctor_id+"','"+sssdoctor_name+"','"+ssspoci+"','"+sssrfv+"','"+sssmedications+"','"+sssimmunizations+"','"+secret_key+"')");
        if(i!=0){
                   // out.println("success");
                    response.sendRedirect("cda_gene.jsp?msg='uplod to cloud'");
                    
                }
                else{
                    out.println("error while uploading additional informations");
                }
        }
            else{
                out.println("error");
            }
        } catch (Exception e) {
//            e.printStackTrace();
            response.sendRedirect("cda_gene.jsp?msgg='This_file_Already_Integrated'");
        }
    }
 

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

    private Node getCompany(Document doc, String string, String documenT_INFIRMATION, String time, String patienT_INFORMATION, String sspatient_id, String sspname, String ssgender, String ssage, String sspdob, String sspmail, String doctoR_INFORMATION, String ssdoctor_id, String ssdoctor_name, String sspoci, String ssrfv, String ssmedications, String ssimmunizations) {
       Element company = doc.createElement("HOSPITAL_B");
        company.setAttribute("id", "1");
        company.appendChild(getCompanyElements(doc, company, "Document_Information", documenT_INFIRMATION));
        company.appendChild(getCompanyElements(doc, company, "Creation_Time", time));
        company.appendChild(getCompanyElements(doc, company, "Patient_Information", patienT_INFORMATION));
        company.appendChild(getCompanyElements(doc, company, "Patient_ID", sspatient_id));
        company.appendChild(getCompanyElements(doc, company, "Patient_Name", sspname));
        company.appendChild(getCompanyElements(doc, company, "Patient_Gender", ssgender));
        company.appendChild(getCompanyElements(doc, company, "Patient_Gender", ssage));
        company.appendChild(getCompanyElements(doc, company, "Patient_DateOfBirth", sspdob));
        company.appendChild(getCompanyElements(doc, company, "Patient_Email", sspmail));
                company.appendChild(getCompanyElements(doc, company, "Doctor_Information", doctoR_INFORMATION));
                company.appendChild(getCompanyElements(doc, company, "Doctor_ID", ssdoctor_id));
                company.appendChild(getCompanyElements(doc, company, "Doctor_Name", ssdoctor_name));
                      company.appendChild(getCompanyElements(doc, company, "Provider_office_contact_Information", sspoci));
                       company.appendChild(getCompanyElements(doc, company, "Reason_for_Visit", ssrfv));
                        company.appendChild(getCompanyElements(doc, company, "Medications", ssmedications));
                         company.appendChild(getCompanyElements(doc, company, "Immunizations", ssimmunizations));
              
        return company;
    }
}
