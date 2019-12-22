<%-- 
    Document   : insert1
    Created on : Jul 4, 2017, 12:17:14 PM
    Author     : java3
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="network.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String oid=(String)session.getAttribute("oid");
String omail=(String)session.getAttribute("omail");
    String block1 = request.getParameter("b1");
    String block2 = request.getParameter("b2");
    String block3 = request.getParameter("b3");
    String fid = request.getParameter("fid");
    System.out.println("Fid==" + fid + "block1=====" + block1 + "Block2===" + block2 + "Block3===" + block3);
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    try {
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                Date date = new Date();
                String time = dateFormat.format(date);
        int i = st.executeUpdate("insert into ort (oid, omail, fid, str1, str2, str3, status, dynamic, time)values('" + oid + "','" + omail + "','" + fid + "','" + block1 + "','" + block2 + "','" + block3 + "','waiting','insert','"+time+"')");
        if (i != 0) {

            System.out.println("INserting ort table successfull");
            response.sendRedirect("dynamic.jsp?msg=sucess");
        } else {
            System.out.println("registration failed");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>