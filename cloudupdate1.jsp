<%-- 
    Document   : cloudupdate1
    Created on : Jul 4, 2017, 5:00:55 PM
    Author     : java3
--%>

<%@page import="network.Mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="network.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String id = request.getParameter("id");
	int uid= Integer.valueOf(id);
    String time = (String) session.getAttribute("time");
    String omail = (String) session.getAttribute("omail");
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    Statement stt = con.createStatement();
    ResultSet rs = null;
    try {
        rs = st.executeQuery("select * from ort where status='waiting' and id="+id);
        if (rs.next()) {
            
        String fid  = rs.getString("fid");
            String str1 = rs.getString("str1");
            String str2 = rs.getString("str2");
            String str3 = rs.getString("str3");
            int hash1 = str1.hashCode();
            int hash2 = str2.hashCode();
            int hash3 = str3.hashCode();
            System.out.println("Str1=="+str1+"str2==="+str2+"str3===="+str3+"hash1=="+hash1+"hash2=="+hash2+"hash3==="+hash3);
 int i = st.executeUpdate("UPDATE file_upload SET str1='" + str1 + "', str2='" + str2 + "', str3='" + str3 + "', hash1='" + hash1 + "', hash2='" + hash2 + "', hash3='" + hash3 + "' where id='" + fid + "'");
   int ii=stt.executeUpdate("UPDATE ort SET status='updated' where id='"+id+"'and time='"+time+"' ");  
 String msg="Your Data Updated Successfully";  
 Mail ma = new Mail();
                ma.secretMail(msg, "DataPossessionProof", omail);  
response.sendRedirect("cloudupdate.jsp?msg=updation success");                     
        }else{
            response.sendRedirect("cloudupdate.jsp?mssg=failed");
        }
    } catch (Exception e) {
        e.printStackTrace();

    }
%>