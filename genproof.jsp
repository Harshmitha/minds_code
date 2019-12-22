<%-- 
    Document   : genproof
    Created on : Jul 1, 2017, 12:41:05 PM
    Author     : java3
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="network.Mail"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.Mail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String fid = request.getParameter("fid");
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    Connection conn = DbConnection.getConnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();
    st1 = conn.createStatement();
    try {
        rs = st.executeQuery("select * from file_upload where id='" + fid + "'");
//        rs = st1.executeQuery("select * from fileupload where id='"+fid+"'");
        while (rs.next()) {
            String hash1 = rs.getString("hash1");
            String hash2 = rs.getString("hash2");
            String hash3 = rs.getString("hash3");
            String omail = rs.getString("omail");
            String title = rs.getString("title");
DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                Date date = new Date();
                String time = dateFormat.format(date);
                

            int i = sto.executeUpdate("update challenge set status='Generated',time='"+time+"' where fileid='" + fid + "' And status='checking'");
            if (i != 0) {
                String msg = "Proof Of Your Data Possession" + "\nFile Id And Name:" + fid + title + "\nHash Values Of Block1:" + hash1 + "\nHash Values Of Block2:" + hash2 + "\nHash Values Of Block3:" + hash3;
                Mail ma = new Mail();
                ma.secretMail(msg, "DataPossessionProof", omail);

                System.out.println("success");
                response.sendRedirect("cloudvchallenge.jsp?msg=Proof sent Successfully");
            } else {
                System.out.println("failed");
            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>