<%-- 
    Document   : proofverify1
    Created on : Jul 3, 2017, 2:32:49 PM
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
String hashs1=(String)session.getAttribute("hashs1");
String hashs2=(String)session.getAttribute("hashs2");
String hashs3=(String)session.getAttribute("hashs3");
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    Connection conn = DbConnection.getConnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();
    st1 = conn.createStatement();
   try{
       
    rs=st.executeQuery("select * from file_upload where hash1='"+hashs1+"' and hash2='"+hashs2+"' and hash3='"+hashs3+"' and id='"+fid+"'");
    if(rs.next()){
               
        System.out.println("Sucess");
        response.sendRedirect("proofverify2.jsp?msg=sucess");
    }
        else{
//            response.sendRedirect("p.jsp");
        System.out.println("Failed");
        }
    
}catch(Exception e){
    e.printStackTrace();
    }
%>