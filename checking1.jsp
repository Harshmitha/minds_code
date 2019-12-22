<%-- 
    Document   : checking1
    Created on : Jul 1, 2017, 10:44:42 AM
    Author     : java3
--%>

<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String fid = request.getParameter("id");
    String oid = (String) session.getAttribute("oid");
    String oname = (String) session.getAttribute("oname");
    String omail = (String) session.getAttribute("omail");
    System.out.println("File Id="+fid+"oid="+oid+"oname="+oname);
Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    Connection conn = DbConnection.getConnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();
     st1 = conn.createStatement();
    try {
        rs = st.executeQuery("select * from file_upload where id='"+fid+"'");
//        rs = st1.executeQuery("select * from fileupload where id='"+fid+"'");
        while (rs.next()) {
            String title = rs.getString("title");                                    
        System.out.println("Fileid======"+title); 
 int ii = st1.executeUpdate("update file_upload set status='Challenged'where id='" + fid + "'");            
        int i = sto.executeUpdate("insert into challenge(fileid, oid, oname, status, title, omail)values('" + fid + "','" + oid + "','" + oname + "','checking','"+title+"','"+omail+"')");
        if (i != 0) {
//          int i = sto.executeUpdate("update filerequest set status='granted' where id='"+fkid+"'"); 
            
            System.out.println("success");
            response.sendRedirect("checking.jsp?msg=challenge sent sucessfully");
        } else {
            System.out.println("failed");
            response.sendRedirect("checking.jsp?mssg=challenge sending Failed");
        }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>